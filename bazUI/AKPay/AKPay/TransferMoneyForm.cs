using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Form for transferring money from one user to another
    /// </summary>
    public partial class TransferMoneyForm : Form
    {
        private User currentUser;
        private TextBox txtRecipientEmail;
        private TextBox txtAmount;
        private TextBox txtDescription;
        private Label lblCurrentBalance;
        private Button btnTransfer;
        private Button btnCancel;
        private Panel headerPanel;

        public TransferMoneyForm(User user)
        {
            currentUser = user;
            InitializeComponent();
            LoadUserBalance();
        }

        /// <summary>
        /// Initialize all UI components
        /// </summary>
        private void InitializeComponent()
        {
            this.Text = "AKPay - Transfer Money";
            this.Size = new Size(500, 550);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;

            // Header panel
            headerPanel = new Panel
            {
                BackColor = Color.FromArgb(46, 204, 113),
                Dock = DockStyle.Top,
                Height = 80
            };

            Label lblTitle = new Label
            {
                Text = "Transfer Money",
                Font = new Font("Segoe UI", 20, FontStyle.Bold),
                ForeColor = Color.White,
                AutoSize = false,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            headerPanel.Controls.Add(lblTitle);

            // Current balance label
            lblCurrentBalance = new Label
            {
                Text = "Your Balance: PKR 0.00",
                Location = new Point(50, 100),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                ForeColor = Color.FromArgb(52, 152, 219)
            };

            // Recipient Email
            Label lblRecipient = new Label
            {
                Text = "Recipient Email:",
                Location = new Point(50, 150),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtRecipientEmail = new TextBox
            {
                Location = new Point(50, 180),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Amount
            Label lblAmount = new Label
            {
                Text = "Amount (PKR):",
                Location = new Point(50, 230),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtAmount = new TextBox
            {
                Location = new Point(50, 260),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Description
            Label lblDescription = new Label
            {
                Text = "Description (Optional):",
                Location = new Point(50, 310),
                Size = new Size(180, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtDescription = new TextBox
            {
                Location = new Point(50, 340),
                Size = new Size(400, 60),
                Font = new Font("Segoe UI", 10),
                Multiline = true
            };

            // Transfer button
            btnTransfer = new Button
            {
                Text = "Transfer",
                Location = new Point(50, 430),
                Size = new Size(195, 45),
                BackColor = Color.FromArgb(46, 204, 113),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnTransfer.Click += BtnTransfer_Click;

            // Cancel button
            btnCancel = new Button
            {
                Text = "Cancel",
                Location = new Point(255, 430),
                Size = new Size(195, 45),
                BackColor = Color.FromArgb(231, 76, 60),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnCancel.Click += BtnCancel_Click;

            // Add controls to form
            this.Controls.Add(headerPanel);
            this.Controls.Add(lblCurrentBalance);
            this.Controls.Add(lblRecipient);
            this.Controls.Add(txtRecipientEmail);
            this.Controls.Add(lblAmount);
            this.Controls.Add(txtAmount);
            this.Controls.Add(lblDescription);
            this.Controls.Add(txtDescription);
            this.Controls.Add(btnTransfer);
            this.Controls.Add(btnCancel);
        }

        /// <summary>
        /// Load and display current user balance
        /// TODO: Implement database query to get current balance
        /// </summary>
        private void LoadUserBalance()
        {
            // TODO: Query database for user balance
            // Example:
            // using (var context = new YourDbContext())
            // {
            //     var userAccount = context.UserAccounts
            //         .FirstOrDefault(ua => ua.userID == currentUser.userID);
            //     
            //     if (userAccount != null)
            //     {
            //         lblCurrentBalance.Text = $"Your Balance: PKR {userAccount.userBalance:N2}";
            //     }
            // }

            lblCurrentBalance.Text = "Your Balance: PKR 0.00";
        }

        /// <summary>
        /// Handle transfer button click
        /// TODO: Implement transfer logic with database transaction
        /// </summary>
        private void BtnTransfer_Click(object sender, EventArgs e)
        {
            // Validate inputs
            if (string.IsNullOrWhiteSpace(txtRecipientEmail.Text))
            {
                MessageBox.Show("Please enter recipient's email.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtAmount.Text))
            {
                MessageBox.Show("Please enter transfer amount.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            decimal amount;
            if (!decimal.TryParse(txtAmount.Text, out amount) || amount <= 0)
            {
                MessageBox.Show("Please enter a valid amount.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // Confirm transfer
            DialogResult result = MessageBox.Show(
                $"Transfer PKR {amount:N2} to {txtRecipientEmail.Text}?",
                "Confirm Transfer",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                // TODO: Implement transfer logic
                // Example:
                // using (var context = new YourDbContext())
                // {
                //     using (var transaction = context.Database.BeginTransaction())
                //     {
                //         try
                //         {
                //             // Find recipient
                //             var recipient = context.Users
                //                 .FirstOrDefault(u => u.email == txtRecipientEmail.Text && !u.isDeleted);
                //             
                //             if (recipient == null)
                //             {
                //                 MessageBox.Show("Recipient not found.", "Error");
                //                 return;
                //             }
                //
                //             // Check sender balance
                //             var senderAccount = context.UserAccounts
                //                 .FirstOrDefault(ua => ua.userID == currentUser.userID);
                //             
                //             if (senderAccount.userBalance < amount)
                //             {
                //                 MessageBox.Show("Insufficient balance.", "Error");
                //                 return;
                //             }
                //
                //             // Update balances
                //             senderAccount.userBalance -= amount;
                //             senderAccount.lastUpdateTime = DateTime.Now;
                //
                //             var recipientAccount = context.UserAccounts
                //                 .FirstOrDefault(ua => ua.userID == recipient.userID);
                //             recipientAccount.userBalance += amount;
                //             recipientAccount.lastUpdateTime = DateTime.Now;
                //
                //             // Create transaction record
                //             var userTransaction = new UserToUserTransaction
                //             {
                //                 senderUserID = currentUser.userID,
                //                 receiverUserID = recipient.userID,
                //                 amount = amount,
                //                 transactionTime = DateTime.Now,
                //                 description = txtDescription.Text
                //             };
                //
                //             context.UserToUserTransactions.Add(userTransaction);
                //             context.SaveChanges();
                //             transaction.Commit();
                //
                //             MessageBox.Show("Transfer successful!", "Success");
                //             this.Close();
                //         }
                //         catch (Exception ex)
                //         {
                //             transaction.Rollback();
                //             MessageBox.Show($"Transfer failed: {ex.Message}", "Error");
                //         }
                //     }
                // }

                MessageBox.Show("Transfer functionality will be implemented soon.", "Info", 
                    MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        /// <summary>
        /// Handle cancel button click
        /// </summary>
        private void BtnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
