using Abp.Authorization;
using QLSV.Authorization.Roles;
using QLSV.Authorization.Users;

namespace QLSV.Authorization
{
    public class PermissionChecker : PermissionChecker<Role, User>
    {
        public PermissionChecker(UserManager userManager)
            : base(userManager)
        {
        }
    }
}
