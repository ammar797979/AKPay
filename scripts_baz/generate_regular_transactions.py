import random
from datetime import datetime, timedelta

# Configuration
NUM_TRANSACTIONS = 1000  # Generate 1000 transactions

# Transaction status IDs:
# 1 = Pending, 2 = Sync Pending, 3 = Invalid, 4 = Sync Failed, 5 = Accepted
def generate_status_id():
    """Generate status ID with realistic distribution"""
    rand = random.random()
    
    if rand < 0.70:  # 70% accepted
        return 5
    elif rand < 0.80:  # 10% pending
        return 1
    elif rand < 0.90:  # 10% sync pending
        return 2
    elif rand < 0.95:  # 5% sync failed
        return 4
    else:  # 5% invalid
        return 3

def generate_amount():
    """Generate realistic transaction amount"""
    tier = random.random()
    
    if tier < 0.40:  # 40% small purchases (10 - 500)
        amount = round(random.uniform(10.00, 500.00), 2)
    elif tier < 0.75:  # 35% medium purchases (500 - 2000)
        amount = round(random.uniform(500.00, 2000.00), 2)
    elif tier < 0.95:  # 20% large purchases (2000 - 5000)
        amount = round(random.uniform(2000.00, 5000.00), 2)
    else:  # 5% very large purchases (5000 - 10000)
        amount = round(random.uniform(5000.00, 10000.00), 2)
    
    return amount

def generate_random_datetime():
    """Generate random datetime within last 6 months"""
    days_ago = random.randint(0, 180)  # 0 to 6 months
    random_date = datetime.now() - timedelta(days=days_ago)
    
    # Random time component - bias towards common transaction hours (8 AM - 10 PM)
    hour = random.choices(
        range(24),
        weights=[1, 1, 1, 1, 1, 1, 2, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 3, 2, 1, 1],
        k=1
    )[0]
    
    random_date = random_date.replace(
        hour=hour,
        minute=random.randint(0, 59),
        second=random.randint(0, 59),
        microsecond=0
    )
    return random_date.strftime('%Y-%m-%d %H:%M:%S')

def generate_payment_mode():
    """Generate payment mode - 60% Online, 40% Offline"""
    return 'Online' if random.random() < 0.60 else 'Offline'

# Generate SQL
print("-- Generated INSERT statements for RegularTransactions table")
print("-- Total records: 1000")
print("-- Generated on:", datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
print()
print("USE AKPayDB;")
print("GO")
print()

# We have 500 users (userID 1-500) and 50 vendors (vendorID 1-50)
NUM_USERS = 500
NUM_VENDORS = 19

for i in range(NUM_TRANSACTIONS):
    from_user_id = random.randint(1, NUM_USERS)
    to_vendor_id = random.randint(1, NUM_VENDORS)
    amount = generate_amount()
    tx_timestamp = generate_random_datetime()
    payment_mode = generate_payment_mode()
    tx_status_id = generate_status_id()
    
    # Generate INSERT statement
    # Note: regularTransactionID is IDENTITY so we don't insert it
    print(f"INSERT INTO RegularTransactions (fromUserID, toVendorID, amount, txTimeStamp, paymentMode, txStatusID)")
    print(f"VALUES ({from_user_id}, {to_vendor_id}, {amount}, '{tx_timestamp}', '{payment_mode}', {tx_status_id});")

print()
print("GO")
print()
print(f"-- Successfully generated {NUM_TRANSACTIONS} INSERT statements")
print("-- Status distribution: ~70% Accepted, ~10% Pending, ~10% Sync Pending, ~5% Sync Failed, ~5% Invalid")
print("-- Payment mode distribution: ~60% Online, ~40% Offline")
print("-- Amount range: 10.00 to 10000.00")
print("-- Timestamp range: Last 6 months")
