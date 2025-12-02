using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Main dashboard form showing user balance and menu options
    /// </summary>
    public partial class DashboardForm : Form
    {
        private User currentUser;
        private Label lblWelcome;
        private Label lblBalance;
        private Label lblBalanceValue;
        private Button btnTransferMoney;
        private Button btnTopUp;
        private Button btnPayVendor;
        private Button btnTransactionHistory;
        private Button btnProfile;
        private Button btnLogout;
        private Panel headerPanel;
        private Panel balancePanel;
        private Panel menuPanel;

        public DashboardForm(User user)
        {
            currentUser = user;
            InitializeComponent();
            LoadUserData();
        }

        /// <summary>
        /// Initialize all UI components for the dashboard
        /// </summary>
        private void InitializeComponent()
        {
            this.Text = "AKPay - Dashboard";
            this.Size = new Size(600, 700);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;

            // Header panel
            headerPanel = new Panel
            {
                BackColor = Color.FromArgb(41, 128, 185),
                Dock = DockStyle.Top,
                Height = 80
            };

            lblWelcome = new Label
            {
                Text = "Welcome to AKPay",
                Font = new Font("Segoe UI", 18, FontStyle.Bold),
                ForeColor = Color.White,
                AutoSize = false,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            headerPanel.Controls.Add(lblWelcome);

            // Balance panel
            balancePanel = new Panel
            {
                Location = new Point(50, 100),
                Size = new Size(500, 100),
                BackColor = Color.FromArgb(52, 152, 219),
                BorderStyle = BorderStyle.FixedSingle
            };

            lblBalance = new Label
            {
                Text = "Current Balance",
                Font = new Font("Segoe UI", 12),
                ForeColor = Color.White,
                Location = new Point(20, 20),
                AutoSize = true
            };

            lblBalanceValue = new Label
            {
                Text = "PKR 0.00",
                Font = new Font("Segoe UI", 24, FontStyle.Bold),
                ForeColor = Color.White,
                Location = new Point(20, 45),
                AutoSize = true
            };

            balancePanel.Controls.Add(lblBalance);
            balancePanel.Controls.Add(lblBalanceValue);

            // Menu panel
            menuPanel = new Panel
            {
                Location = new Point(50, 220),
                Size = new Size(500, 400),
                BackColor = Color.White
            };

            // Transfer Money button
            btnTransferMoney = new Button
            {
                Text = "Transfer Money",
                Location = new Point(50, 20),
                Size = new Size(400, 50),
                BackColor = Color.FromArgb(46, 204, 113),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnTransferMoney.Click += BtnTransferMoney_Click;

            // Top Up button
            btnTopUp = new Button
            {
                Text = "Top Up Account",
                Location = new Point(50, 85),
                Size = new Size(400, 50),
                BackColor = Color.FromArgb(155, 89, 182),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnTopUp.Click += BtnTopUp_Click;

            // Pay Vendor button
            btnPayVendor = new Button
            {
                Text = "Pay to Vendor",
                Location = new Point(50, 150),
                Size = new Size(400, 50),
                BackColor = Color.FromArgb(230, 126, 34),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnPayVendor.Click += BtnPayVendor_Click;

            // Transaction History button
            btnTransactionHistory = new Button
            {
                Text = "Transaction History",
                Location = new Point(50, 215),
                Size = new Size(400, 50),
                BackColor = Color.FromArgb(52, 152, 219),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnTransactionHistory.Click += BtnTransactionHistory_Click;

            // Profile button
            btnProfile = new Button
            {
                Text = "My Profile",
                Location = new Point(50, 280),
                Size = new Size(195, 50),
                BackColor = Color.FromArgb(149, 165, 166),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnProfile.Click += BtnProfile_Click;

            // Logout button
            btnLogout = new Button
            {
                Text = "Logout",
                Location = new Point(255, 280),
                Size = new Size(195, 50),
                BackColor = Color.FromArgb(231, 76, 60),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 12, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnLogout.Click += BtnLogout_Click;

            menuPanel.Controls.Add(btnTransferMoney);
            menuPanel.Controls.Add(btnTopUp);
            menuPanel.Controls.Add(btnPayVendor);
            menuPanel.Controls.Add(btnTransactionHistory);
            menuPanel.Controls.Add(btnProfile);
            menuPanel.Controls.Add(btnLogout);

            // Add controls to form
            this.Controls.Add(headerPanel);
            this.Controls.Add(balancePanel);
            this.Controls.Add(menuPanel);
        }

        /// <summary>
        /// Load user data and display on dashboard
        /// TODO: Implement database query to get latest user data
        /// </summary>
        private void LoadUserData()
        {
            if (currentUser != null)
            {
                lblWelcome.Text = $"Welcome, {currentUser.fullName}";

                // TODO: Load user balance from database
                // Example:
                // using (var context = new YourDbContext())
                // {
                //     var userAccount = context.UserAccounts
                //         .FirstOrDefault(ua => ua.userID == currentUser.userID);
                //     
                //     if (userAccount != null)
                //     {
                //         lblBalanceValue.Text = $"PKR {userAccount.userBalance:N2}";
                //     }
                // }

                lblBalanceValue.Text = "PKR 0.00";
            }
        }

        /// <summary>
        /// Open Transfer Money form
        /// </summary>
        private void BtnTransferMoney_Click(object sender, EventArgs e)
        {
            TransferMoneyForm transferForm = new TransferMoneyForm(currentUser);
            transferForm.ShowDialog();
            LoadUserData(); // Refresh balance after transaction
        }

        /// <summary>
        /// Open Top Up form
        /// </summary>
        private void BtnTopUp_Click(object sender, EventArgs e)
        {
            TopUpForm topUpForm = new TopUpForm(currentUser);
            topUpForm.ShowDialog();
            LoadUserData(); // Refresh balance after top up
        }

        /// <summary>
        /// Open Vendor Payment form
        /// </summary>
        private void BtnPayVendor_Click(object sender, EventArgs e)
        {
            VendorPaymentForm vendorPaymentForm = new VendorPaymentForm(currentUser);
            vendorPaymentForm.ShowDialog();
            LoadUserData(); // Refresh balance after payment
        }

        /// <summary>
        /// Open Transaction History form
        /// </summary>
        private void BtnTransactionHistory_Click(object sender, EventArgs e)
        {
            TransactionHistoryForm historyForm = new TransactionHistoryForm(currentUser);
            historyForm.ShowDialog();
        }

        /// <summary>
        /// Open Profile form
        /// TODO: Create and implement ProfileForm
        /// </summary>
        private void BtnProfile_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Profile management will be implemented soon.", "Info", 
                MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        /// <summary>
        /// Handle logout
        /// </summary>
        private void BtnLogout_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Are you sure you want to logout?", "Confirm Logout", 
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                this.Close();
                LoginForm loginForm = new LoginForm();
                loginForm.Show();
            }
        }
    }
}
