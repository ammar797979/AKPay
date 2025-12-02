using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AKPay
{
    public class EFAKPay : IAKPay
    {
        private Entities _db;
        public EFAKPay(Entities db)
        {
            _db = db;
        }

        public override User CheckEmailExists(string email)
        {
            var userQuery = (from user in User
                              where (user.email == email && isDeleted = 0)
                              select user);
        }
    }
}
