using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace QLSV.Migrations
{
    /// <inheritdoc />
    public partial class mb3 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "KhoaId",
                table: "giaoViens",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_giaoViens_KhoaId",
                table: "giaoViens",
                column: "KhoaId");

            migrationBuilder.AddForeignKey(
                name: "FK_giaoViens_khoas_KhoaId",
                table: "giaoViens",
                column: "KhoaId",
                principalTable: "khoas",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_giaoViens_khoas_KhoaId",
                table: "giaoViens");

            migrationBuilder.DropIndex(
                name: "IX_giaoViens_KhoaId",
                table: "giaoViens");

            migrationBuilder.DropColumn(
                name: "KhoaId",
                table: "giaoViens");
        }
    }
}
