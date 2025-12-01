using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Form to display user's transaction history
    /// </summary>
    public partial class TransactionHistoryForm : Form
    {
        private User currentUser;
        private DataGridView dgvTransactions;
        private ComboBox cmbTransactionType;
        private DateTimePicker dtpFromDate;
        private DateTimePicker dtpToDate;
        private Button btnFilter;
        private Button btnExport;
        private Button btnClose;
        private Panel headerPanel;
        private Panel filterPanel;

        public TransactionHistoryForm(User user)
        {
            currentUser = user;
            InitializeComponent();
            LoadTransactionHistory();
        }

        /// <summary>
        /// Initialize all UI components
        /// </summary>
        private void InitializeComponent()
        {
            this.Text = "AKPay - Transaction History";
            this.Size = new Size(900, 700);
            this.StartPosition = FormStartPosition.CenterScreen;

            // Header panel
            headerPanel = new Panel
            {
                BackColor = Color.FromArgb(52, 152, 219),
                Dock = DockStyle.Top,
                Height = 80
            };

            Label lblTitle = new Label
            {
                Text = "Transaction History",
                Font = new Font("Segoe UI", 20, FontStyle.Bold),
                ForeColor = Color.White,
                AutoSize = false,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            headerPanel.Controls.Add(lblTitle);

            // Filter panel
            filterPanel = new Panel
            {
                Location = new Point(20, 95),
                Size = new Size(840, 80),
                BorderStyle = BorderStyle.FixedSingle,
                BackColor = Color.FromArgb(236, 240, 241)
            };

            Label lblType = new Label
            {
                Text = "Type:",
                Location = new Point(10, 15),
                Size = new Size(50, 25),
                Font = new Font("Segoe UI", 9)
            };

            cmbTransactionType = new ComboBox
            {
                Location = new Point(10, 40),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 9),
                DropDownStyle = ComboBoxStyle.DropDownList
            };
            cmbTransactionType.Items.AddRange(new object[] { 
                "All Transactions", 
                "Transfers Sent", 
                "Transfers Received", 
                "Top Ups", 
                "Vendor Payments" 
            });
            cmbTransactionType.SelectedIndex = 0;

            Label lblFrom = new Label
            {
                Text = "From:",
                Location = new Point(180, 15),
                Size = new Size(50, 25),
                Font = new Font("Segoe UI", 9)
            };

            dtpFromDate = new DateTimePicker
            {
                Location = new Point(180, 40),
                Size = new Size(200, 25),
                Font = new Font("Segoe UI", 9),
                Format = DateTimePickerFormat.Short
            };
            dtpFromDate.Value = DateTime.Now.AddMonths(-1);

            Label lblTo = new Label
            {
                Text = "To:",
                Location = new Point(400, 15),
                Size = new Size(50, 25),
                Font = new Font("Segoe UI", 9)
            };

            dtpToDate = new DateTimePicker
            {
                Location = new Point(400, 40),
                Size = new Size(200, 25),
                Font = new Font("Segoe UI", 9),
                Format = DateTimePickerFormat.Short
            };

            btnFilter = new Button
            {
                Text = "Apply Filter",
                Location = new Point(620, 35),
                Size = new Size(100, 30),
                BackColor = Color.FromArgb(52, 152, 219),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 9, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnFilter.Click += BtnFilter_Click;

            btnExport = new Button
            {
                Text = "Export",
                Location = new Point(730, 35),
                Size = new Size(100, 30),
                BackColor = Color.FromArgb(46, 204, 113),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 9, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnExport.Click += BtnExport_Click;

            filterPanel.Controls.Add(lblType);
            filterPanel.Controls.Add(cmbTransactionType);
            filterPanel.Controls.Add(lblFrom);
            filterPanel.Controls.Add(dtpFromDate);
            filterPanel.Controls.Add(lblTo);
            filterPanel.Controls.Add(dtpToDate);
            filterPanel.Controls.Add(btnFilter);
            filterPanel.Controls.Add(btnExport);

            // DataGridView for transactions
            dgvTransactions = new DataGridView
            {
                Location = new Point(20, 190),
                Size = new Size(840, 410),
                BackgroundColor = Color.White,
                BorderStyle = BorderStyle.Fixed3D,
                AllowUserToAddRows = false,
                AllowUserToDeleteRows = false,
                ReadOnly = true,
                SelectionMode = DataGridViewSelectionMode.FullRowSelect,
                AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill,
                ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize
            };

            // Configure columns
            dgvTransactions.Columns.Add("Date", "Date");
            dgvTransactions.Columns.Add("Type", "Type");
            dgvTransactions.Columns.Add("Description", "Description");
            dgvTransactions.Columns.Add("Amount", "Amount");
            dgvTransactions.Columns.Add("Status", "Status");

            // Set column widths
            dgvTransactions.Columns["Date"].FillWeight = 20;
            dgvTransactions.Columns["Type"].FillWeight = 20;
            dgvTransactions.Columns["Description"].FillWeight = 35;
            dgvTransactions.Columns["Amount"].FillWeight = 15;
            dgvTransactions.Columns["Status"].FillWeight = 10;

            // Close button
            btnClose = new Button
            {
                Text = "Close",
                Location = new Point(760, 615),
                Size = new Size(100, 35),
                BackColor = Color.FromArgb(231, 76, 60),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 10, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnClose.Click += BtnClose_Click;

            // Add controls to form
            this.Controls.Add(headerPanel);
            this.Controls.Add(filterPanel);
            this.Controls.Add(dgvTransactions);
            this.Controls.Add(btnClose);
        }

        /// <summary>
        /// Load transaction history from database
        /// TODO: Implement database query to fetch all user transactions
        /// </summary>
        private void LoadTransactionHistory()
        {
            dgvTransactions.Rows.Clear();

            // TODO: Implement database query to get all transactions
            // Example:
            // using (var context = new YourDbContext())
            // {
            //     // Get User-to-User transfers (sent)
            //     var sentTransfers = context.UserToUserTransactions
            //         .Where(t => t.senderUserID == currentUser.userID)
            //         .Select(t => new {
            //             Date = t.transactionTime,
            //             Type = "Transfer Sent",
            //             Description = $"To: {t.User1.fullName} - {t.description}",
            //             Amount = -t.amount,
            //             Status = "Completed"
            //         });
            //
            //     // Get User-to-User transfers (received)
            //     var receivedTransfers = context.UserToUserTransactions
            //         .Where(t => t.receiverUserID == currentUser.userID)
            //         .Select(t => new {
            //             Date = t.transactionTime,
            //             Type = "Transfer Received",
            //             Description = $"From: {t.User.fullName} - {t.description}",
            //             Amount = t.amount,
            //             Status = "Completed"
            //         });
            //
            //     // Get Top Up transactions
            //     var topUps = context.TopUpTransactions
            //         .Where(t => t.userID == currentUser.userID)
            //         .Select(t => new {
            //             Date = t.topUpTime,
            //             Type = "Top Up",
            //             Description = $"Via {t.TopUpSource.sourceName}",
            //             Amount = t.amount,
            //             Status = "Completed"
            //         });
            //
            //     // Get Vendor payments
            //     var vendorPayments = context.VendorPaymentTransactions
            //         .Where(t => t.userID == currentUser.userID)
            //         .Select(t => new {
            //             Date = t.paymentTime,
            //             Type = "Vendor Payment",
            //             Description = $"To: {t.Vendor.vendorName} - {t.description}",
            //             Amount = -t.amount,
            //             Status = "Completed"
            //         });
            //
            //     // Combine all transactions
            //     var allTransactions = sentTransfers
            //         .Concat(receivedTransfers)
            //         .Concat(topUps)
            //         .Concat(vendorPayments)
            //         .OrderByDescending(t => t.Date)
            //         .ToList();
            //
            //     // Populate DataGridView
            //     foreach (var transaction in allTransactions)
            //     {
            //         dgvTransactions.Rows.Add(
            //             transaction.Date.ToString("dd/MM/yyyy HH:mm"),
            //             transaction.Type,
            //             transaction.Description,
            //             $"PKR {Math.Abs(transaction.Amount):N2}" + (transaction.Amount < 0 ? " (Debit)" : " (Credit)"),
            //             transaction.Status
            //         );
            //     }
            // }

            // Sample data for UI demonstration
            dgvTransactions.Rows.Add(
                DateTime.Now.AddDays(-1).ToString("dd/MM/yyyy HH:mm"),
                "Top Up",
                "Via Bank Transfer",
                "PKR 5,000.00 (Credit)",
                "Completed"
            );
            dgvTransactions.Rows.Add(
                DateTime.Now.AddDays(-2).ToString("dd/MM/yyyy HH:mm"),
                "Transfer Sent",
                "To: John Doe - Payment for services",
                "PKR 1,500.00 (Debit)",
                "Completed"
            );
            dgvTransactions.Rows.Add(
                DateTime.Now.AddDays(-3).ToString("dd/MM/yyyy HH:mm"),
                "Vendor Payment",
                "To: ABC Store - Invoice #12345",
                "PKR 2,300.00 (Debit)",
                "Completed"
            );
        }

        /// <summary>
        /// Handle filter button click
        /// TODO: Implement filtered query based on selected criteria
        /// </summary>
        private void BtnFilter_Click(object sender, EventArgs e)
        {
            // TODO: Apply filters to transaction query
            // Filter by transaction type, date range, etc.
            
            MessageBox.Show("Filter functionality will be implemented soon.", "Info", 
                MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        /// <summary>
        /// Handle export button click
        /// TODO: Implement export to CSV or PDF functionality
        /// </summary>
        private void BtnExport_Click(object sender, EventArgs e)
        {
            // TODO: Implement export functionality
            // Example: Export to CSV
            // SaveFileDialog saveDialog = new SaveFileDialog
            // {
            //     Filter = "CSV files (*.csv)|*.csv|All files (*.*)|*.*",
            //     FileName = $"Transactions_{DateTime.Now:yyyyMMdd}.csv"
            // };
            //
            // if (saveDialog.ShowDialog() == DialogResult.OK)
            // {
            //     // Export logic here
            //     MessageBox.Show("Transactions exported successfully!", "Success");
            // }

            MessageBox.Show("Export functionality will be implemented soon.", "Info", 
                MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        /// <summary>
        /// Handle close button click
        /// </summary>
        private void BtnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
