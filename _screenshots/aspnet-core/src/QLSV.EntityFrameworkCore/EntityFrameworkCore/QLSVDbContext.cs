using Microsoft.EntityFrameworkCore;
using Abp.Zero.EntityFrameworkCore;
using QLSV.Authorization.Roles;
using QLSV.Authorization.Users;
using QLSV.MultiTenancy;
using QLSV.DbEntities;

namespace QLSV.EntityFrameworkCore
{
    public class QLSVDbContext : AbpZeroDbContext<Tenant, Role, User, QLSVDbContext>
    {
        public DbSet<Student> Students { get; set; }
        public DbSet<Khoa> khoas { get; set; }
        public DbSet<KetQua> ketQuas { get; set; }
        public DbSet<MonHoc> monHoc { get; set; }
        /* Define a DbSet for each entity of the application */
        
        public QLSVDbContext(DbContextOptions<QLSVDbContext> options)
            : base(options)
        {
        }
    }
}
