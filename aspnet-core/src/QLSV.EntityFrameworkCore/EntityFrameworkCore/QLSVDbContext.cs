using Microsoft.EntityFrameworkCore;
using Abp.Zero.EntityFrameworkCore;
using QLSV.Authorization.Roles;
using QLSV.Authorization.Users;
using QLSV.MultiTenancy;

namespace QLSV.EntityFrameworkCore
{
    public class QLSVDbContext : AbpZeroDbContext<Tenant, Role, User, QLSVDbContext>
    {
        /* Define a DbSet for each entity of the application */
        
        public QLSVDbContext(DbContextOptions<QLSVDbContext> options)
            : base(options)
        {
        }
    }
}
