using System;
using System.Windows.Forms;

namespace AKPay
{
    /// <summary>
    /// Entry point for the AKPay WinForms application
    /// </summary>
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // Enable visual styles for modern UI appearance
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            
            // Start the application with the Login Form
            Application.Run(new LoginForm());
        }
    }
}
