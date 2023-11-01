using System.Data.Common;
using Microsoft.EntityFrameworkCore;

namespace QLSV.EntityFrameworkCore
{
    public static class QLSVDbContextConfigurer
    {
        public static void Configure(DbContextOptionsBuilder<QLSVDbContext> builder, string connectionString)
        {
            builder.UseSqlServer(connectionString);
        }

        public static void Configure(DbContextOptionsBuilder<QLSVDbContext> builder, DbConnection connection)
        {
            builder.UseSqlServer(connection);
        }
    }
}
