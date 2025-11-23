import random
import hashlib
from datetime import datetime, timedelta

# Configuration
NUM_USERS = 500
NULL_USERTYPE_PERCENTAGE = 0.10

# Generate random names
first_names = [
    "Ali", "Ahmed", "Muhammad", "Hassan", "Usman", "Bilal", "Hamza", "Zain", "Omar", "Fahad",
    "Ayesha", "Fatima", "Zainab", "Maryam", "Aisha", "Sara", "Hira", "Noor", "Amna", "Iqra",
    "Abdullah", "Ibrahim", "Yusuf", "Imran", "Adnan", "Arslan", "Kamran", "Tariq", "Saad", "Asad",
    "Sana", "Mahnoor", "Rabia", "Khadija", "Alina", "Maria", "Sidra", "Nimra", "Farhan", "Raza",
    "Talha", "Junaid", "Shahzad", "Waqas", "Naveed", "Farooq", "Kashif", "Rizwan", "Faisal", "Sami",
    "Bushra", "Shamsa", "Tuba", "Uzma", "Samina", "Nazia", "Rubina", "Shazia", "Farzana", "Naseem",
    "Asim", "Zahid", "Khalid", "Rashid", "Majid", "Salman", "Irfan", "Wasim", "Nadeem", "Hanif",
    "Sadaf", "Humaira", "Saima", "Shaista", "Fouzia", "Naila", "Shama", "Yasmin", "Parveen", "Tahira",
    "Aamir", "Saleem", "Shahid", "Arshad", "Jamil", "Akram", "Anwar", "Aslam", "Azhar", "Rafiq",
    "Nadia", "Riffat", "Sumera", "Amjad", "Aftab", "Qamar", "Shafiq", "Shakeel", "Tanvir", "Zaheer"
]

last_names = [
    "Khan", "Ali", "Ahmed", "Hassan", "Hussain", "Shah", "Malik", "Iqbal", "Raza", "Siddiqui",
    "Butt", "Chaudhry", "Sheikh", "Mahmood", "Akhtar", "Aziz", "Haider", "Javed", "Mirza", "Naqvi",
    "Qureshi", "Rasheed", "Saeed", "Tahir", "Umar", "Waseem", "Yousaf", "Zaidi", "Abbas", "Akbar",
    "Aslam", "Ayub", "Bashir", "Farooq", "Ghani", "Hameed", "Ilyas", "Jamil", "Karim", "Latif",
    "Masood", "Nadeem", "Qadir", "Rafiq", "Sadiq", "Tariq", "Waheed", "Yaqoob", "Zia", "Anwar"
]

# User types
user_types = ["student", "teacher", "worker", "admin"]

def generate_password_hash(user_id):
    """Generate a simple hash for password"""
    password = f"password{user_id}"
    return hashlib.sha256(password.encode()).hexdigest()

def generate_phone_number(existing_phones):
    """Generate unique 11-digit phone starting with 3"""
    while True:
        # Format: 3XXXXXXXXXX (11 digits total)
        phone = "3" + "".join([str(random.randint(0, 9)) for _ in range(10)])
        if phone not in existing_phones:
            existing_phones.add(phone)
            return phone

def generate_email(user_id, existing_emails):
    """Generate unique email ending with @lums.edu.pk"""
    while True:
        # Various email formats
        formats = [
            f"user{user_id}@lums.edu.pk",
            f"{user_id:05d}@lums.edu.pk",
            f"student{user_id}@lums.edu.pk",
            f"lums{user_id}@lums.edu.pk"
        ]
        email = random.choice(formats)
        if email not in existing_emails:
            existing_emails.add(email)
            return email

def generate_random_date():
    """Generate random datetime within last 2 years"""
    days_ago = random.randint(0, 730)  # 0 to 2 years
    random_date = datetime.now() - timedelta(days=days_ago)
    # Random time component
    random_date = random_date.replace(
        hour=random.randint(0, 23),
        minute=random.randint(0, 59),
        second=random.randint(0, 59),
        microsecond=0
    )
    return random_date.strftime('%Y-%m-%d %H:%M:%S')

def generate_full_name():
    """Generate random full name"""
    first = random.choice(first_names)
    last = random.choice(last_names)
    return f"{first} {last}"

# Track used values to ensure uniqueness
used_emails = set()
used_phones = set()

# Generate SQL
print("-- Generated INSERT statements for Users table")
print("-- Total records: 500")
print("-- Generated on:", datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
print()
print("USE AKPayDB;")
print("GO")
print()

# Calculate how many should have NULL userType (roughly 10%)
null_usertype_count = int(NUM_USERS * NULL_USERTYPE_PERCENTAGE)
null_indices = set(random.sample(range(NUM_USERS), null_usertype_count))

for i in range(NUM_USERS):
    user_id = i + 1
    email = generate_email(user_id, used_emails)
    phone = generate_phone_number(used_phones)
    full_name = generate_full_name()
    password_hash = generate_password_hash(user_id)
    
    # Determine userType (NULL for ~10%)
    if i in null_indices:
        user_type = "NULL"
    else:
        user_type = f"'{random.choice(user_types)}'"
    
    date_created = generate_random_date()
    
    # Generate INSERT statement
    # Note: userID is IDENTITY so we don't insert it
    print(f"INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated)")
    print(f"VALUES ('{email}', '{phone}', '{full_name}', '{password_hash}', {user_type}, '{date_created}');")

print()
print("GO")
print()
print(f"-- Successfully generated {NUM_USERS} INSERT statements")
print(f"-- Approximately {null_usertype_count} records have NULL userType ({NULL_USERTYPE_PERCENTAGE*100}%)")
