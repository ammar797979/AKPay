using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AKPay
{
    public interface IAKPay
    {
        // 0 for no, 1 for yes, -1 for error
        public abstract Task<int> CheckEmailExists(string email);

        // TODO

        // //  SignUp (third-party, but we will add a button for testing)
        // Task TEST_CreateUser();

        // // Login User
        // Task AuthUser();

        // Task FetchUserTxHistory(); // Or is this done in views?

        // Task ExecRegularTx(); // Regular tx

        // Task ExecU2UTx(); // User to user tx

        // Task AddBeneficiary(); // In U2U tx

        // Task ExecTopUpTx(); // Top up tx

        // Task FetchDataForVisual(); // Or is this done in views?

        // Task FetchProfileData(); // Or is this done in views?

        // Task ChangePassword(); // Change a users password

        // Task SoftDeleteUser(); // (Soft) Delete user account

        // Task NotifyUser(); // For any notif to a user
    }
}
