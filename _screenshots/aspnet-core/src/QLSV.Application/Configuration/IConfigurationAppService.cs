using System.Threading.Tasks;
using QLSV.Configuration.Dto;

namespace QLSV.Configuration
{
    public interface IConfigurationAppService
    {
        Task ChangeUiTheme(ChangeUiThemeInput input);
    }
}
