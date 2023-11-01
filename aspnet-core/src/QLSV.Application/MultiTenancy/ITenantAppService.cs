using Abp.Application.Services;
using QLSV.MultiTenancy.Dto;

namespace QLSV.MultiTenancy
{
    public interface ITenantAppService : IAsyncCrudAppService<TenantDto, int, PagedTenantResultRequestDto, CreateTenantDto, TenantDto>
    {
    }
}

