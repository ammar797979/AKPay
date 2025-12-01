# AKPay - Windows Forms Payment System

## Overview
AKPay is a comprehensive payment system application built using Windows Forms and Entity Framework targeting .NET Framework 4.8. This application provides a user-friendly interface for managing digital payments, transfers, and vendor transactions.

## Features

### 1. **User Authentication**
   - **LoginForm.cs**: User login interface with email and password authentication
   - **RegisterForm.cs**: New user registration with fields for full name, email, phone, user type, and password

### 2. **Dashboard**
   - **DashboardForm.cs**: Main hub displaying:
     - Current account balance
     - Quick access to all features
     - User-friendly menu system

### 3. **Transaction Features**
   - **TransferMoneyForm.cs**: Transfer money to other users
     - Enter recipient email
     - Specify amount
     - Add optional description
     - Balance validation before transfer
   
   - **TopUpForm.cs**: Add money to account
     - Multiple top-up sources (Bank Transfer, Credit Card, Debit Card, Mobile Banking, Cash Deposit)
     - Source details input
     - Minimum (PKR 100) and Maximum (PKR 100,000) limits
   
   - **VendorPaymentForm.cs**: Pay to registered vendors
     - Vendor selection dropdown
     - Display vendor information
     - Payment amount and description

### 4. **Transaction History**
   - **TransactionHistoryForm.cs**: View all transactions
     - DataGridView showing all transaction types
     - Filter by transaction type and date range
     - Export functionality (planned)
     - Displays: Date, Type, Description, Amount, Status

## Project Structure

```
AKPay/
??? Program.cs                      # Application entry point
??? LoginForm.cs                    # Login interface
??? RegisterForm.cs                 # User registration
??? DashboardForm.cs                # Main dashboard
??? TransferMoneyForm.cs            # User-to-user transfers
??? TopUpForm.cs                    # Account top-up
??? VendorPaymentForm.cs            # Vendor payments
??? TransactionHistoryForm.cs       # Transaction history viewer
??? User.cs                         # User entity (auto-generated)
??? UserAccount.cs                  # User account entity (auto-generated)
??? Vendor.cs                       # Vendor entity (auto-generated)
??? TopUpTransaction.cs             # Top-up transaction entity (auto-generated)
??? UserToUserTransaction.cs        # P2P transaction entity (auto-generated)
??? VendorPaymentTransaction.cs     # Vendor payment entity (auto-generated)
??? Model1.edmx                     # Entity Framework data model
??? App.config                      # Application configuration
```

## Database Schema

The application uses Entity Framework with the following main entities:

### User
- `userID` (Primary Key)
- `email`
- `phone`
- `fullName`
- `passwordHash`
- `userType`
- `dateCreated`
- `isDeleted`
- `deletedAt`

### UserAccount
- `userID` (Primary Key, Foreign Key to User)
- `userBalance`
- `lastUpdateTime`
- `isActive`

### Vendor
- `vendorID` (Primary Key)
- `vendorName`
- `vendorBalance`
- `lastUpdateTime`
- `managerName`
- `managerPhone`
- `statusID`

### Transaction Entities
- **UserToUserTransaction**: For user-to-user money transfers
- **TopUpTransaction**: For account top-ups
- **VendorPaymentTransaction**: For payments to vendors

## Setup Instructions

### Prerequisites
- Visual Studio 2019 or later
- .NET Framework 4.8
- SQL Server (LocalDB, Express, or full version)
- Entity Framework 6.4.4

### Database Setup
1. Update the connection string in `App.config`:
   ```xml
   <connectionStrings>
     <add name="DefaultConnection" 
          connectionString="Data Source=YOUR_SERVER;Initial Catalog=AKPayDB;Integrated Security=True" 
          providerName="System.Data.SqlClient" />
   </connectionStrings>
   ```

2. Use the existing `Model1.edmx` file to:
   - Update the database connection
   - Generate or update the database from the model
   - Or map to an existing database

### Running the Application
1. Open the solution in Visual Studio
2. Build the solution (Ctrl+Shift+B)
3. Run the application (F5)
4. The LoginForm will appear as the startup form

## Implementation Status

### ? Completed
- All UI forms created and designed
- Form navigation logic
- Input validation on all forms
- Professional UI styling with color-coded sections
- Build configuration and project setup

### ?? Pending Implementation (TODOs)

All database interaction code is marked with `// TODO:` comments. Here's what needs to be implemented:

#### 1. **LoginForm.cs**
   - Authenticate user against database
   - Password hashing and verification
   - Session management

#### 2. **RegisterForm.cs**
   - Insert new user into database
   - Create associated UserAccount record
   - Email validation (check for duplicates)
   - Password hashing

#### 3. **DashboardForm.cs**
   - Load current user balance from UserAccount table
   - Refresh balance after transactions

#### 4. **TransferMoneyForm.cs**
   - Validate recipient exists
   - Check sender balance
   - Execute transaction (debit sender, credit receiver)
   - Create UserToUserTransaction record
   - Use database transactions for atomicity

#### 5. **TopUpForm.cs**
   - Update UserAccount balance
   - Create TopUpTransaction record
   - Handle TopUpSource lookup/creation

#### 6. **VendorPaymentForm.cs**
   - Load active vendors from database
   - Validate user balance
   - Update balances (user and vendor)
   - Create VendorPaymentTransaction record

#### 7. **TransactionHistoryForm.cs**
   - Query all transaction types for current user
   - Implement filtering by type and date
   - Export to CSV functionality

## Code Guidelines for Implementation

### Using Entity Framework Context
```csharp
// Example pattern for database operations
using (var context = new YourDbContext())
{
    // Query example
    var user = context.Users
        .FirstOrDefault(u => u.email == email && !u.isDeleted);
    
    // Insert example
    context.Users.Add(newUser);
    context.SaveChanges();
}
```

### Transaction Pattern
```csharp
using (var context = new YourDbContext())
{
    using (var transaction = context.Database.BeginTransaction())
    {
        try
        {
            // Multiple database operations
            context.SaveChanges();
            transaction.Commit();
        }
        catch (Exception ex)
        {
            transaction.Rollback();
            // Handle error
        }
    }
}
```

### Password Hashing
Implement secure password hashing using:
- `System.Security.Cryptography`
- BCrypt.Net (recommended - add NuGet package)
- PBKDF2

## UI Color Scheme

The application uses a consistent color scheme:

- **Primary Blue**: `#2980B9` (41, 128, 185) - Login, Dashboard, Transaction History
- **Success Green**: `#2ECC71` (46, 204, 113) - Register, Transfer Money
- **Purple**: `#9B59B6` (155, 89, 182) - Top Up
- **Orange**: `#E67E22` (230, 126, 34) - Vendor Payment
- **Danger Red**: `#E74C3C` (231, 76, 60) - Cancel/Logout buttons
- **Light Gray**: `#95A5A6` (149, 165, 166) - Secondary buttons

## Future Enhancements

1. **Admin Panel**: Vendor management, user administration
2. **Notifications**: Real-time transaction notifications
3. **Reports**: Monthly statements, analytics
4. **Security**: Two-factor authentication, session timeout
5. **Mobile**: Mobile app version using Xamarin
6. **API**: RESTful API for third-party integration

## Support

For questions or issues:
1. Check the TODO comments in each file
2. Review the database schema in Model1.edmx
3. Refer to Entity Framework 6 documentation

## License

This is a university project for educational purposes.

---
**Note**: All forms are fully designed and functional in terms of UI. Database connectivity and business logic need to be implemented as per the TODO comments in each file.
