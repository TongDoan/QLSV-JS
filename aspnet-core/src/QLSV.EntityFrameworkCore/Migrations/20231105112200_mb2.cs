using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace QLSV.Migrations
{
    /// <inheritdoc />
    public partial class mb2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "GiaoVienId",
                table: "ketQuas",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "giaoViens",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TenantId = table.Column<int>(type: "int", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Age = table.Column<int>(type: "int", nullable: false),
                    Phai = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NgaySinh = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreationTime = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatorUserId = table.Column<long>(type: "bigint", nullable: true),
                    LastModificationTime = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LastModifierUserId = table.Column<long>(type: "bigint", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeleterUserId = table.Column<long>(type: "bigint", nullable: true),
                    DeletionTime = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_giaoViens", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ketQuas_GiaoVienId",
                table: "ketQuas",
                column: "GiaoVienId");

            migrationBuilder.AddForeignKey(
                name: "FK_ketQuas_giaoViens_GiaoVienId",
                table: "ketQuas",
                column: "GiaoVienId",
                principalTable: "giaoViens",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ketQuas_giaoViens_GiaoVienId",
                table: "ketQuas");

            migrationBuilder.DropTable(
                name: "giaoViens");

            migrationBuilder.DropIndex(
                name: "IX_ketQuas_GiaoVienId",
                table: "ketQuas");

            migrationBuilder.DropColumn(
                name: "GiaoVienId",
                table: "ketQuas");
        }
    }
}
