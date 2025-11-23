import random
from datetime import datetime, timedelta

# Configuration
NUM_NOTIFICATIONS = 1500  # Generate 1500 notifications

# We have:
# - 1000 RegularTransactions (IDs 1-1000)
# - 800 TopUpTransactions (IDs 1-800)
# - 300 VendorPaymentTransaction (IDs 1-300)
# - User-to-User transactions (we'll generate some, IDs 1-200)

# Transaction counts
REGULAR_TX_COUNT = 1000
TOPUP_TX_COUNT = 800
VENDOR_PAY_TX_COUNT = 300
U2U_TX_COUNT = 200  # Estimated

NUM_USERS = 500
NUM_VENDORS = 17  # Exactly 17 vendors from seed data

def generate_notification_message(notif_type, tx_type, amount=None):
    """Generate realistic notification message"""
    if notif_type == 'Success':
        messages = {
            'Regular': [
                f'Payment of Rs. {amount} to vendor successful.',
                f'Transaction completed successfully. Amount: Rs. {amount}',
                f'Your payment of Rs. {amount} has been processed.',
            ],
            'U2U': [
                f'You sent Rs. {amount} successfully.',
                f'Transfer of Rs. {amount} completed.',
                f'Payment to user successful. Amount: Rs. {amount}',
            ],
            'TopUp': [
                f'Account topped up with Rs. {amount}.',
                f'Rs. {amount} added to your account.',
                f'Top-up successful. New balance reflects Rs. {amount} credit.',
            ],
            'VendorPay': [
                f'Settlement of Rs. {amount} received.',
                f'Admin payment of Rs. {amount} processed.',
                f'Vendor account credited with Rs. {amount}.',
            ]
        }
    elif notif_type == 'Failure':
        messages = {
            'Regular': [
                f'Payment of Rs. {amount} failed. Insufficient balance.',
                f'Transaction declined. Please try again.',
                f'Payment failed due to technical error.',
            ],
            'U2U': [
                f'Transfer of Rs. {amount} failed.',
                f'User transfer declined. Check balance.',
                f'Payment could not be completed.',
            ],
            'TopUp': [
                f'Top-up of Rs. {amount} failed. Contact support.',
                f'Payment method declined.',
                f'Unable to process top-up request.',
            ],
            'VendorPay': [
                f'Settlement payment failed. Contact admin.',
                f'Payment of Rs. {amount} could not be processed.',
                f'Vendor payment sync failed.',
            ]
        }
    else:  # Info
        messages = {
            'Regular': [
                'New payment feature available!',
                'Vendor menu updated.',
                'Special discount available at selected vendors.',
            ],
            'U2U': [
                'Transfer limits updated.',
                'New users can now receive payments.',
                'Security update: Enable two-factor authentication.',
            ],
            'TopUp': [
                'New top-up methods available.',
                'Instant top-up now supported.',
                'Promotional offer: Get bonus on top-up.',
            ],
            'VendorPay': [
                'Settlement schedule updated.',
                'New payment terms effective.',
                'Vendor portal maintenance scheduled.',
            ]
        }
    
    return random.choice(messages.get(tx_type, ['Notification']))

def generate_random_datetime():
    """Generate random datetime within last 6 months"""
    days_ago = random.randint(0, 180)
    random_date = datetime.now() - timedelta(days=days_ago)
    random_date = random_date.replace(
        hour=random.randint(0, 23),
        minute=random.randint(0, 59),
        second=random.randint(0, 59),
        microsecond=0
    )
    return random_date.strftime('%Y-%m-%d %H:%M:%S')

def generate_is_read():
    """Generate isRead status - 65% read, 35% unread"""
    return 1 if random.random() < 0.65 else 0

# Generate SQL
print("-- Generated INSERT statements for Notifications table")
print("-- Total records: 1500")
print("-- Generated on:", datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
print()
print("USE AKPayDB;")
print("GO")
print()

# Distribution of notifications
# 50% Regular transactions
# 25% TopUp transactions
# 15% VendorPay transactions
# 10% Info notifications (no txID)

for i in range(NUM_NOTIFICATIONS):
    rand = random.random()
    
    # Determine transaction type and recipient
    if rand < 0.50:  # 50% Regular transactions
        tx_type = 'Regular'
        recipient_type = 'User'
        recipient_id = random.randint(1, NUM_USERS)
        tx_id = random.randint(1, REGULAR_TX_COUNT)
        notif_type = random.choices(['Success', 'Failure'], weights=[0.75, 0.25], k=1)[0]
        amount = round(random.uniform(10, 5000), 2)
        
    elif rand < 0.75:  # 25% TopUp transactions
        tx_type = 'TopUp'
        recipient_type = 'User'
        recipient_id = random.randint(1, NUM_USERS)
        tx_id = random.randint(1, TOPUP_TX_COUNT)
        notif_type = random.choices(['Success', 'Failure'], weights=[0.85, 0.15], k=1)[0]
        amount = round(random.uniform(100, 10000), 2)
        
    elif rand < 0.90:  # 15% VendorPay transactions
        tx_type = 'VendorPay'
        recipient_type = 'Vendor'
        recipient_id = random.randint(1, NUM_VENDORS)
        tx_id = random.randint(1, VENDOR_PAY_TX_COUNT)
        notif_type = random.choices(['Success', 'Failure'], weights=[0.90, 0.10], k=1)[0]
        amount = round(random.uniform(1000, 100000), 2)
        
    else:  # 10% Info notifications (no txID)
        tx_type = random.choice(['Regular', 'U2U', 'TopUp', 'VendorPay'])
        recipient_type = random.choice(['User', 'Vendor'])
        recipient_id = random.randint(1, NUM_USERS if recipient_type == 'User' else NUM_VENDORS)
        tx_id = 'NULL'
        notif_type = 'Info'
        amount = None
    
    msg = generate_notification_message(notif_type, tx_type, amount)
    # Escape single quotes in message
    msg_escaped = msg.replace("'", "''")
    
    created_at = generate_random_datetime()
    is_read = generate_is_read()
    
    # Generate INSERT statement
    print(f"INSERT INTO Notifications (recipientType, recipientID, txType, txID, msg, createdAt, isRead, notifType)")
    print(f"VALUES ('{recipient_type}', {recipient_id}, '{tx_type}', {tx_id}, '{msg_escaped}', '{created_at}', {is_read}, '{notif_type}');")

print()
print("GO")
print()
print(f"-- Successfully generated {NUM_NOTIFICATIONS} INSERT statements")
print("-- Recipient type: ~75% User, ~25% Vendor (IDs 1-19 for vendors)")
print("-- Notification type: ~75% Success, ~15% Failure, ~10% Info")
print("-- Transaction type: ~50% Regular, ~25% TopUp, ~15% VendorPay, ~10% Info")
print("-- Read status: ~65% read, ~35% unread")
print("-- Timestamp range: Last 6 months")
