using Abp.AspNetCore.Mvc.Controllers;
using Abp.IdentityFramework;
using Microsoft.AspNetCore.Identity;

namespace QLSV.Controllers
{
    public abstract class QLSVControllerBase: AbpController
    {
        protected QLSVControllerBase()
        {
            LocalizationSourceName = QLSVConsts.LocalizationSourceName;
        }

        protected void CheckErrors(IdentityResult identityResult)
        {
            identityResult.CheckErrors(LocalizationManager);
        }
    }
}
