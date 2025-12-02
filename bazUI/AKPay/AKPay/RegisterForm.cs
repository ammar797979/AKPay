using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Registration form for new user sign-up
    /// </summary>
    public partial class RegisterForm : Form
    {
        private TextBox txtFullName;
        private TextBox txtEmail;
        private TextBox txtPhone;
        private TextBox txtPassword;
        private TextBox txtConfirmPassword;
        private ComboBox cmbUserType;
        private Button btnRegister;
        private Button btnCancel;
        private Label lblTitle;
        private Panel headerPanel;

        public RegisterForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Initialize all UI components for the registration form
        /// </summary>
        private void InitializeComponent()
        {
            this.Text = "AKPay - Register";
            this.Size = new Size(450, 650);
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

            lblTitle = new Label
            {
                Text = "Create Account",
                Font = new Font("Segoe UI", 20, FontStyle.Bold),
                ForeColor = Color.White,
                AutoSize = false,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            headerPanel.Controls.Add(lblTitle);

            // Full Name
            Label lblFullName = new Label
            {
                Text = "Full Name:",
                Location = new Point(50, 110),
                Size = new Size(100, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtFullName = new TextBox
            {
                Location = new Point(50, 135),
                Size = new Size(350, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Email
            Label lblEmail = new Label
            {
                Text = "Email:",
                Location = new Point(50, 175),
                Size = new Size(100, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtEmail = new TextBox
            {
                Location = new Point(50, 200),
                Size = new Size(350, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Phone
            Label lblPhone = new Label
            {
                Text = "Phone Number:",
                Location = new Point(50, 240),
                Size = new Size(120, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtPhone = new TextBox
            {
                Location = new Point(50, 265),
                Size = new Size(350, 30),
                Font = new Font("Segoe UI", 10)
            };

            // User Type
            Label lblUserType = new Label
            {
                Text = "User Type:",
                Location = new Point(50, 305),
                Size = new Size(100, 25),
                Font = new Font("Segoe UI", 10)
            };

            cmbUserType = new ComboBox
            {
                Location = new Point(50, 330),
                Size = new Size(350, 30),
                Font = new Font("Segoe UI", 10),
                DropDownStyle = ComboBoxStyle.DropDownList
            };
            cmbUserType.Items.AddRange(new object[] { "Regular", "Premium", "Business" });
            cmbUserType.SelectedIndex = 0;

            // Password
            Label lblPassword = new Label
            {
                Text = "Password:",
                Location = new Point(50, 370),
                Size = new Size(100, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtPassword = new TextBox
            {
                Location = new Point(50, 395),
                Size = new Size(350, 30),
                Font = new Font("Segoe UI", 10),
                PasswordChar = '?',
                UseSystemPasswordChar = true
            };

            // Confirm Password
            Label lblConfirmPassword = new Label
            {
                Text = "Confirm Password:",
                Location = new Point(50, 435),
                Size = new Size(150, 25),
                Font = new Font("Segoe UI", 10)
            };

            txtConfirmPassword = new TextBox
            {
                Location = new Point(50, 460),
                Size = new Size(350, 30),
                Font = new Font("Segoe UI", 10),
                PasswordChar = '?',
                UseSystemPasswordChar = true
            };

            // Register button
            btnRegister = new Button
            {
                Text = "Register",
                Location = new Point(50, 520),
                Size = new Size(170, 40),
                BackColor = Color.FromArgb(46, 204, 113),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnRegister.Click += BtnRegister_Click;

            // Cancel button
            btnCancel = new Button
            {
                Text = "Cancel",
                Location = new Point(230, 520),
                Size = new Size(170, 40),
                BackColor = Color.FromArgb(231, 76, 60),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnCancel.Click += BtnCancel_Click;

            // Add controls to form
            this.Controls.Add(headerPanel);
            this.Controls.Add(lblFullName);
            this.Controls.Add(txtFullName);
            this.Controls.Add(lblEmail);
            this.Controls.Add(txtEmail);
            this.Controls.Add(lblPhone);
            this.Controls.Add(txtPhone);
            this.Controls.Add(lblUserType);
            this.Controls.Add(cmbUserType);
            this.Controls.Add(lblPassword);
            this.Controls.Add(txtPassword);
            this.Controls.Add(lblConfirmPassword);
            this.Controls.Add(txtConfirmPassword);
            this.Controls.Add(btnRegister);
            this.Controls.Add(btnCancel);
        }

        /// <summary>
        /// Handle registration button click
        /// TODO: Implement user registration logic with database
        /// </summary>
        private void BtnRegister_Click(object sender, EventArgs e)
        {
            // Validate all fields
            if (string.IsNullOrWhiteSpace(txtFullName.Text))
            {
                MessageBox.Show("Please enter your full name.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                MessageBox.Show("Please enter your email.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                MessageBox.Show("Please enter your phone number.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                MessageBox.Show("Please enter a password.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                MessageBox.Show("Passwords do not match.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // TODO: Implement user registration in database
            // Example:
            // using (var context = new YourDbContext())
            // {
            //     // Check if email already exists
            //     if (context.Users.Any(u => u.email == txtEmail.Text))
            //     {
            //         MessageBox.Show("Email already registered.", "Error");
            //         return;
            //     }
            //
            //     // Create new user
            //     var newUser = new User
            //     {
            //         fullName = txtFullName.Text,
            //         email = txtEmail.Text,
            //         phone = txtPhone.Text,
            //         userType = cmbUserType.SelectedItem.ToString(),
            //         passwordHash = HashPassword(txtPassword.Text),
            //         dateCreated = DateTime.Now,
            //         isDeleted = false
            //     };
            //
            //     context.Users.Add(newUser);
            //     context.SaveChanges();
            //
            //     // Create user account with initial balance
            //     var userAccount = new UserAccount
            //     {
            //         userID = newUser.userID,
            //         userBalance = 0,
            //         lastUpdateTime = DateTime.Now,
            //         isActive = true
            //     };
            //
            //     context.UserAccounts.Add(userAccount);
            //     context.SaveChanges();
            //
            //     MessageBox.Show("Registration successful!", "Success");
            //     this.Close();
            // }

            MessageBox.Show("Registration functionality will be implemented soon.", "Info", 
                MessageBoxButtons.OK, MessageBoxIcon.Information);
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
