using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Form for adding money to user account
    /// </summary>
    public partial class TopUpForm : Form
    {
        private User currentUser;
        private TextBox txtAmount;
        private ComboBox cmbSource;
        private TextBox txtSourceDetails;
        private Label lblCurrentBalance;
        private Button btnTopUp;
        private Button btnCancel;
        private Panel headerPanel;

        public TopUpForm(User user)
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
            this.Text = "AKPay - Top Up Account";
            this.Size = new Size(500, 550);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;

            // Header panel
            headerPanel = new Panel
            {
                BackColor = Color.FromArgb(155, 89, 182),
                Dock = DockStyle.Top,
                Height = 80
            };

            Label lblTitle = new Label
            {
                Text = "Top Up Account",
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
                Text = "Current Balance: PKR 0.00",
                Location = new Point(50, 100),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                ForeColor = Color.FromArgb(52, 152, 219)
            };

            // Top Up Source
            Label lblSource = new Label
            {
                Text = "Top Up Source:",
                Location = new Point(50, 150),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            cmbSource = new ComboBox
            {
                Location = new Point(50, 180),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10),
                DropDownStyle = ComboBoxStyle.DropDownList
            };
            cmbSource.Items.AddRange(new object[] { 
                "Bank Transfer", 
                "Credit Card", 
                "Debit Card", 
                "Mobile Banking", 
                "Cash Deposit" 
            });
            cmbSource.SelectedIndex = 0;

            // Source Details
            Label lblSourceDetails = new Label
            {
                Text = "Source Details (Card/Account Number):",
                Location = new Point(50, 230),
                Size = new Size(300, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtSourceDetails = new TextBox
            {
                Location = new Point(50, 260),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Amount
            Label lblAmount = new Label
            {
                Text = "Amount (PKR):",
                Location = new Point(50, 310),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtAmount = new TextBox
            {
                Location = new Point(50, 340),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Info label
            Label lblInfo = new Label
            {
                Text = "Minimum top up: PKR 100 | Maximum: PKR 100,000",
                Location = new Point(50, 380),
                Size = new Size(400, 25),
                Font = new Font("Segoe UI", 9),
                ForeColor = Color.Gray
            };

            // Top Up button
            btnTopUp = new Button
            {
                Text = "Top Up",
                Location = new Point(50, 430),
                Size = new Size(195, 45),
                BackColor = Color.FromArgb(155, 89, 182),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnTopUp.Click += BtnTopUp_Click;

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
            this.Controls.Add(lblSource);
            this.Controls.Add(cmbSource);
            this.Controls.Add(lblSourceDetails);
            this.Controls.Add(txtSourceDetails);
            this.Controls.Add(lblAmount);
            this.Controls.Add(txtAmount);
            this.Controls.Add(lblInfo);
            this.Controls.Add(btnTopUp);
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
            //         lblCurrentBalance.Text = $"Current Balance: PKR {userAccount.userBalance:N2}";
            //     }
            // }

            lblCurrentBalance.Text = "Current Balance: PKR 0.00";
        }

        /// <summary>
        /// Handle top up button click
        /// TODO: Implement top up logic with database transaction
        /// </summary>
        private void BtnTopUp_Click(object sender, EventArgs e)
        {
            // Validate inputs
            if (string.IsNullOrWhiteSpace(txtAmount.Text))
            {
                MessageBox.Show("Please enter top up amount.", "Validation Error", 
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

            if (amount < 100)
            {
                MessageBox.Show("Minimum top up amount is PKR 100.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (amount > 100000)
            {
                MessageBox.Show("Maximum top up amount is PKR 100,000.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtSourceDetails.Text))
            {
                MessageBox.Show("Please enter source details.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // Confirm top up
            DialogResult result = MessageBox.Show(
                $"Top up PKR {amount:N2} using {cmbSource.SelectedItem}?",
                "Confirm Top Up",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                // TODO: Implement top up logic
                // Example:
                // using (var context = new YourDbContext())
                // {
                //     using (var transaction = context.Database.BeginTransaction())
                //     {
                //         try
                //         {
                //             // Get or create TopUpSource
                //             var topUpSource = context.TopUpSources
                //                 .FirstOrDefault(s => s.sourceName == cmbSource.SelectedItem.ToString());
                //             
                //             if (topUpSource == null)
                //             {
                //                 topUpSource = new TopUpSource
                //                 {
                //                     sourceName = cmbSource.SelectedItem.ToString()
                //                 };
                //                 context.TopUpSources.Add(topUpSource);
                //                 context.SaveChanges();
                //             }
                //
                //             // Update user account balance
                //             var userAccount = context.UserAccounts
                //                 .FirstOrDefault(ua => ua.userID == currentUser.userID);
                //             
                //             userAccount.userBalance += amount;
                //             userAccount.lastUpdateTime = DateTime.Now;
                //
                //             // Create top up transaction record
                //             var topUpTransaction = new TopUpTransaction
                //             {
                //                 userID = currentUser.userID,
                //                 sourceID = topUpSource.sourceID,
                //                 amount = amount,
                //                 topUpTime = DateTime.Now,
                //                 sourceDetails = txtSourceDetails.Text
                //             };
                //
                //             context.TopUpTransactions.Add(topUpTransaction);
                //             context.SaveChanges();
                //             transaction.Commit();
                //
                //             MessageBox.Show("Top up successful!", "Success");
                //             this.Close();
                //         }
                //         catch (Exception ex)
                //         {
                //             transaction.Rollback();
                //             MessageBox.Show($"Top up failed: {ex.Message}", "Error");
                //         }
                //     }
                // }

                MessageBox.Show("Top up functionality will be implemented soon.", "Info", 
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
