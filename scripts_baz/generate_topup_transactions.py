import random
from datetime import datetime, timedelta

# Configuration
NUM_TRANSACTIONS = 800  # Generate 800 top-up transactions

# TopUp Source IDs (from 002_adding_values.sql):
# 1 = Admin, 2 = Bank, 3 = Card, 4 = Cash, 5 = Mobile Wallet, 6 = Cheque
def generate_source_id():
    """Generate source ID with realistic distribution"""
    rand = random.random()
    
    # Most common: Card, Mobile Wallet, Bank
    # Less common: Cash, Cheque
    # Rare: Admin
    if rand < 0.30:  # 30% Card
        return 3
    elif rand < 0.55:  # 25% Mobile Wallet
        return 5
    elif rand < 0.75:  # 20% Bank
        return 2
    elif rand < 0.90:  # 15% Cash
        return 4
    elif rand < 0.97:  # 7% Cheque
        return 6
    else:  # 3% Admin
        return 1

# Transaction status IDs:
# 1 = Pending, 2 = Sync Pending, 3 = Invalid, 4 = Sync Failed, 5 = Accepted
def generate_status_id():
    """Generate status ID with realistic distribution for top-ups"""
    rand = random.random()
    
    # Top-ups should have higher success rate than regular transactions
    if rand < 0.80:  # 80% accepted
        return 5
    elif rand < 0.88:  # 8% pending
        return 1
    elif rand < 0.95:  # 7% sync pending
        return 2
    elif rand < 0.98:  # 3% sync failed
        return 4
    else:  # 2% invalid
        return 3

def generate_amount():
    """Generate realistic top-up amount"""
    tier = random.random()
    
    # Common top-up amounts: 500, 1000, 2000, 5000, 10000
    if tier < 0.25:  # 25% small top-ups (100 - 1000)
        amount = round(random.uniform(100.00, 1000.00), 2)
    elif tier < 0.50:  # 25% standard top-ups (1000 - 3000)
        amount = round(random.uniform(1000.00, 3000.00), 2)
    elif tier < 0.75:  # 25% large top-ups (3000 - 7000)
        amount = round(random.uniform(3000.00, 7000.00), 2)
    else:  # 25% very large top-ups (7000 - 20000)
        amount = round(random.uniform(7000.00, 20000.00), 2)
    
    return amount

def generate_random_datetime():
    """Generate random datetime within last year"""
    days_ago = random.randint(0, 365)  # 0 to 1 year
    random_date = datetime.now() - timedelta(days=days_ago)
    
    # Random time component - top-ups can happen anytime but more common during day
    hour = random.choices(
        range(24),
        weights=[2, 1, 1, 1, 1, 2, 3, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 2, 2],
        k=1
    )[0]
    
    random_date = random_date.replace(
        hour=hour,
        minute=random.randint(0, 59),
        second=random.randint(0, 59),
        microsecond=0
    )
    return random_date.strftime('%Y-%m-%d %H:%M:%S')

# Generate SQL
print("-- Generated INSERT statements for TopUpTransactions table")
print("-- Total records: 800")
print("-- Generated on:", datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
print()
print("USE AKPayDB;")
print("GO")
print()

# We have 500 users (userID 1-500)
NUM_USERS = 500

for i in range(NUM_TRANSACTIONS):
    source_id = generate_source_id()
    to_user_id = random.randint(1, NUM_USERS)
    amount = generate_amount()
    tx_timestamp = generate_random_datetime()
    tx_status_id = generate_status_id()
    
    # Generate INSERT statement
    # Note: topUpTransactionID is IDENTITY so we don't insert it
    print(f"INSERT INTO TopUpTransactions (sourceID, toUserID, amount, txTimeStamp, txStatusID)")
    print(f"VALUES ({source_id}, {to_user_id}, {amount}, '{tx_timestamp}', {tx_status_id});")

print()
print("GO")
print()
print(f"-- Successfully generated {NUM_TRANSACTIONS} INSERT statements")
print("-- Source distribution: ~30% Card, ~25% Mobile Wallet, ~20% Bank, ~15% Cash, ~7% Cheque, ~3% Admin")
print("-- Status distribution: ~80% Accepted, ~8% Pending, ~7% Sync Pending, ~3% Sync Failed, ~2% Invalid")
print("-- Amount range: 100.00 to 20000.00")
print("-- Timestamp range: Last 1 year")
