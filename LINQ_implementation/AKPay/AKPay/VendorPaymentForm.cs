using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Form for making payments to vendors
    /// </summary>
    public partial class VendorPaymentForm : Form
    {
        private User currentUser;
        private ComboBox cmbVendor;
        private TextBox txtAmount;
        private TextBox txtDescription;
        private Label lblCurrentBalance;
        private Label lblVendorInfo;
        private Button btnPay;
        private Button btnCancel;
        private Panel headerPanel;

        public VendorPaymentForm(User user)
        {
            currentUser = user;
            InitializeComponent();
            LoadUserBalance();
            LoadVendors();
        }

        /// <summary>
        /// Initialize all UI components
        /// </summary>
        private void InitializeComponent()
        {
            this.Text = "AKPay - Pay to Vendor";
            this.Size = new Size(500, 600);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;

            // Header panel
            headerPanel = new Panel
            {
                BackColor = Color.FromArgb(230, 126, 34),
                Dock = DockStyle.Top,
                Height = 80
            };

            Label lblTitle = new Label
            {
                Text = "Pay to Vendor",
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

            // Vendor Selection
            Label lblVendor = new Label
            {
                Text = "Select Vendor:",
                Location = new Point(50, 150),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            cmbVendor = new ComboBox
            {
                Location = new Point(50, 180),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10),
                DropDownStyle = ComboBoxStyle.DropDownList
            };
            cmbVendor.SelectedIndexChanged += CmbVendor_SelectedIndexChanged;

            // Vendor Info label
            lblVendorInfo = new Label
            {
                Text = "Select a vendor to see details",
                Location = new Point(50, 220),
                Size = new Size(400, 40),
                Font = new Font("Segoe UI", 9),
                ForeColor = Color.Gray
            };

            // Amount
            Label lblAmount = new Label
            {
                Text = "Amount (PKR):",
                Location = new Point(50, 275),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtAmount = new TextBox
            {
                Location = new Point(50, 305),
                Size = new Size(400, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Description
            Label lblDescription = new Label
            {
                Text = "Description:",
                Location = new Point(50, 355),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtDescription = new TextBox
            {
                Location = new Point(50, 385),
                Size = new Size(400, 80),
                Font = new Font("Segoe UI", 10),
                Multiline = true
            };

            // Pay button
            btnPay = new Button
            {
                Text = "Pay Now",
                Location = new Point(50, 490),
                Size = new Size(195, 45),
                BackColor = Color.FromArgb(230, 126, 34),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnPay.Click += BtnPay_Click;

            // Cancel button
            btnCancel = new Button
            {
                Text = "Cancel",
                Location = new Point(255, 490),
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
            this.Controls.Add(lblVendor);
            this.Controls.Add(cmbVendor);
            this.Controls.Add(lblVendorInfo);
            this.Controls.Add(lblAmount);
            this.Controls.Add(txtAmount);
            this.Controls.Add(lblDescription);
            this.Controls.Add(txtDescription);
            this.Controls.Add(btnPay);
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
        /// Load active vendors into dropdown
        /// TODO: Implement database query to get active vendors
        /// </summary>
        private void LoadVendors()
        {
            // TODO: Query database for active vendors
            // Example:
            // using (var context = new YourDbContext())
            // {
            //     var vendors = context.Vendors
            //         .Include(v => v.VendorStatus)
            //         .Where(v => v.VendorStatus.statusName == "Active")
            //         .ToList();
            //     
            //     cmbVendor.DataSource = vendors;
            //     cmbVendor.DisplayMember = "vendorName";
            //     cmbVendor.ValueMember = "vendorID";
            // }

            // Placeholder vendors for UI demonstration
            cmbVendor.Items.Add("Sample Vendor 1");
            cmbVendor.Items.Add("Sample Vendor 2");
            cmbVendor.Items.Add("Sample Vendor 3");
        }

        /// <summary>
        /// Handle vendor selection change
        /// TODO: Display selected vendor details
        /// </summary>
        private void CmbVendor_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbVendor.SelectedIndex >= 0)
            {
                // TODO: Get selected vendor details from database
                // Example:
                // var selectedVendor = cmbVendor.SelectedItem as Vendor;
                // if (selectedVendor != null)
                // {
                //     lblVendorInfo.Text = $"Manager: {selectedVendor.managerName}\n" +
                //                         $"Contact: {selectedVendor.managerPhone}";
                // }

                lblVendorInfo.Text = "Manager: Sample Manager\nContact: +92-XXX-XXXXXXX";
            }
        }

        /// <summary>
        /// Handle payment button click
        /// TODO: Implement vendor payment logic with database transaction
        /// </summary>
        private void BtnPay_Click(object sender, EventArgs e)
        {
            // Validate inputs
            if (cmbVendor.SelectedIndex < 0)
            {
                MessageBox.Show("Please select a vendor.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtAmount.Text))
            {
                MessageBox.Show("Please enter payment amount.", "Validation Error", 
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

            // Confirm payment
            DialogResult result = MessageBox.Show(
                $"Pay PKR {amount:N2} to {cmbVendor.SelectedItem}?",
                "Confirm Payment",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                // TODO: Implement vendor payment logic
                // Example:
                // using (var context = new YourDbContext())
                // {
                //     using (var transaction = context.Database.BeginTransaction())
                //     {
                //         try
                //         {
                //             var vendor = cmbVendor.SelectedItem as Vendor;
                //             
                //             // Check user balance
                //             var userAccount = context.UserAccounts
                //                 .FirstOrDefault(ua => ua.userID == currentUser.userID);
                //             
                //             if (userAccount.userBalance < amount)
                //             {
                //                 MessageBox.Show("Insufficient balance.", "Error");
                //                 return;
                //             }
                //
                //             // Update user balance
                //             userAccount.userBalance -= amount;
                //             userAccount.lastUpdateTime = DateTime.Now;
                //
                //             // Update vendor balance
                //             vendor.vendorBalance += amount;
                //             vendor.lastUpdateTime = DateTime.Now;
                //
                //             // Create payment transaction record
                //             var paymentTransaction = new VendorPaymentTransaction
                //             {
                //                 vendorID = vendor.vendorID,
                //                 userID = currentUser.userID,
                //                 amount = amount,
                //                 paymentTime = DateTime.Now,
                //                 description = txtDescription.Text
                //             };
                //
                //             context.VendorPaymentTransactions.Add(paymentTransaction);
                //             context.SaveChanges();
                //             transaction.Commit();
                //
                //             MessageBox.Show("Payment successful!", "Success");
                //             this.Close();
                //         }
                //         catch (Exception ex)
                //         {
                //             transaction.Rollback();
                //             MessageBox.Show($"Payment failed: {ex.Message}", "Error");
                //         }
                //     }
                // }

                MessageBox.Show("Vendor payment functionality will be implemented soon.", "Info", 
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
