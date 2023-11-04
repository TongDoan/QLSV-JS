using System.Threading.Tasks;
using Abp.Application.Services;
using QLSV.Sessions.Dto;

namespace QLSV.Sessions
{
    public interface ISessionAppService : IApplicationService
    {
        Task<GetCurrentLoginInformationsOutput> GetCurrentLoginInformations();
    }
}
