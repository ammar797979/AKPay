import random
from datetime import datetime

# Configuration
NUM_USERS = 500

def generate_balance():
    """Generate random balance between 0.01 and 50000.00"""
    # Different balance tiers for variety
    tier = random.random()
    
    if tier < 0.3:  # 30% low balance (0.01 - 500)
        balance = round(random.uniform(0.01, 500.00), 2)
    elif tier < 0.6:  # 30% medium balance (500 - 5000)
        balance = round(random.uniform(500.00, 5000.00), 2)
    elif tier < 0.85:  # 25% high balance (5000 - 20000)
        balance = round(random.uniform(5000.00, 20000.00), 2)
    else:  # 15% very high balance (20000 - 50000)
        balance = round(random.uniform(20000.00, 50000.00), 2)
    
    return balance

# Generate SQL
print("-- Generated UPDATE statements for UserAccounts table")
print("-- Total records: 500")
print("-- Generated on:", datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
print()
print("USE AKPayDB;")
print("GO")
print()

for user_id in range(1, NUM_USERS + 1):
    balance = generate_balance()
    
    # Generate UPDATE statement
    print(f"UPDATE UserAccounts SET userBalance = {balance} WHERE userID = {user_id};")

print()
print("GO")
print()
print(f"-- Successfully generated {NUM_USERS} UPDATE statements")
print("-- All balances are positive (> 0) and within DECIMAL(12,2) constraints")
