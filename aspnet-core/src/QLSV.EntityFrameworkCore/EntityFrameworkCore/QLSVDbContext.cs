﻿
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
        /* Define a DbSet for each entity of the application */
        public DbSet<Student> Student { get; set; }
        public QLSVDbContext(DbContextOptions<QLSVDbContext> options)
            : base(options)
        {
        }
    }
}
