using Abp.AutoMapper;
using Abp.Modules;
using Abp.Reflection.Extensions;
using QLSV.Authorization;

namespace QLSV
{
    [DependsOn(
        typeof(QLSVCoreModule), 
        typeof(AbpAutoMapperModule))]
    public class QLSVApplicationModule : AbpModule
    {
        public override void PreInitialize()
        {
            Configuration.Authorization.Providers.Add<QLSVAuthorizationProvider>();
        }

        public override void Initialize()
        {
            var thisAssembly = typeof(QLSVApplicationModule).GetAssembly();

            IocManager.RegisterAssemblyByConvention(thisAssembly);

            Configuration.Modules.AbpAutoMapper().Configurators.Add(
                // Scan the assembly for classes which inherit from AutoMapper.Profile
                cfg => cfg.AddMaps(thisAssembly)
            );
        }
    }
}
