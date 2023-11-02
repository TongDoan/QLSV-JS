using System.Threading.Tasks;
using Abp.Authorization;
using Abp.Runtime.Session;
using QLSV.Configuration.Dto;

namespace QLSV.Configuration
{
    [AbpAuthorize]
    public class ConfigurationAppService : QLSVAppServiceBase, IConfigurationAppService
    {
        public async Task ChangeUiTheme(ChangeUiThemeInput input)
        {
            await SettingManager.ChangeSettingForUserAsync(AbpSession.ToUserIdentifier(), AppSettingNames.UiTheme, input.Theme);
        }
    }
}
