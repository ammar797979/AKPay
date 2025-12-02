using System;
using System.Drawing;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Login form for user authentication
    /// </summary>
    public partial class LoginForm : Form
    {
        private TextBox txtEmail;
        private TextBox txtPassword;
        private Button btnLogin;
        private Button btnRegister;
        private Label lblTitle;
        private Label lblEmail;
        private Label lblPassword;
        private Panel headerPanel;

        public LoginForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Initialize all UI components for the login form
        /// </summary>
        private void InitializeComponent()
        {
            this.Text = "AKPay - Login";
            this.Size = new Size(400, 500);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;

            // Header panel with title
            headerPanel = new Panel
            {
                BackColor = Color.FromArgb(41, 128, 185),
                Dock = DockStyle.Top,
                Height = 80
            };

            lblTitle = new Label
            {
                Text = "AKPay",
                Font = new Font("Segoe UI", 24, FontStyle.Bold),
                ForeColor = Color.White,
                AutoSize = false,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            headerPanel.Controls.Add(lblTitle);

            // Email label
            lblEmail = new Label
            {
                Text = "Email:",
                Location = new Point(50, 120),
                Size = new Size(100, 25),
                Font = new Font("Segoe UI", 10)
            };

            // Email textbox
            txtEmail = new TextBox
            {
                Location = new Point(50, 150),
                Size = new Size(300, 30),
                Font = new Font("Segoe UI", 10)
            };

            // Password label
            lblPassword = new Label
            {
                Text = "Password:",
                Location = new Point(50, 200),
                Size = new Size(100, 25),
                Font = new Font("Segoe UI", 10)
            };

            // Password textbox
            txtPassword = new TextBox
            {
                Location = new Point(50, 230),
                Size = new Size(300, 30),
                Font = new Font("Segoe UI", 10),
                PasswordChar = '?',
                UseSystemPasswordChar = true
            };

            // Login button
            btnLogin = new Button
            {
                Text = "Login",
                Location = new Point(50, 300),
                Size = new Size(300, 40),
                BackColor = Color.FromArgb(41, 128, 185),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnLogin.Click += BtnLogin_Click;

            // Register button
            btnRegister = new Button
            {
                Text = "Create New Account",
                Location = new Point(50, 360),
                Size = new Size(300, 40),
                BackColor = Color.FromArgb(46, 204, 113),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                Cursor = Cursors.Hand
            };
            btnRegister.Click += BtnRegister_Click;

            // Add controls to form
            this.Controls.Add(headerPanel);
            this.Controls.Add(lblEmail);
            this.Controls.Add(txtEmail);
            this.Controls.Add(lblPassword);
            this.Controls.Add(txtPassword);
            this.Controls.Add(btnLogin);
            this.Controls.Add(btnRegister);
        }

        /// <summary>
        /// Handle login button click
        /// TODO: Implement authentication logic using Entity Framework
        /// </summary>
        private void BtnLogin_Click(object sender, EventArgs e)
        {
            // Validate input fields
            if (string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                MessageBox.Show("Please enter your email.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                MessageBox.Show("Please enter your password.", "Validation Error", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // TEMPORARY: Create a dummy user for testing
            var testUser = new User
            {
                userID = 1,
                email = txtEmail.Text,
                fullName = "Test User",
                phone = "1234567890",
                userType = "Regular",
                dateCreated = DateTime.Now,
                isDeleted = false
            };

            // Open dashboard with the test user
            DashboardForm dashboard = new DashboardForm(testUser);
            this.Hide();
            dashboard.ShowDialog();
            this.Close();

            // TODO: Replace above with actual database authentication
            // using (var context = new YourDbContext())
            // {
            //     var user = context.Users
            //         .FirstOrDefault(u => u.email == txtEmail.Text && !u.isDeleted);
            //     
            //     if (user != null && VerifyPassword(txtPassword.Text, user.passwordHash))
            //     {
            //         // Authentication successful
            //         DashboardForm dashboard = new DashboardForm(user);
            //         this.Hide();
            //         dashboard.ShowDialog();
            //         this.Close();
            //     }
            //     else
            //     {
            //         MessageBox.Show("Invalid email or password.", "Login Failed");
            //     }
            // }
        }

        /// <summary>
        /// Handle register button click - opens registration form
        /// </summary>
        private void BtnRegister_Click(object sender, EventArgs e)
        {
            RegisterForm registerForm = new RegisterForm();
            this.Hide();
            registerForm.ShowDialog();
            this.Show();
        }
    }
}
