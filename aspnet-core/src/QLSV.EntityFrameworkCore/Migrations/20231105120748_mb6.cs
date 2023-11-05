using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace QLSV.Migrations
{
    /// <inheritdoc />
    public partial class mb6 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_tongKets_StudentId",
                table: "tongKets",
                column: "StudentId");

            migrationBuilder.AddForeignKey(
                name: "FK_tongKets_Students_StudentId",
                table: "tongKets",
                column: "StudentId",
                principalTable: "Students",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tongKets_Students_StudentId",
                table: "tongKets");

            migrationBuilder.DropIndex(
                name: "IX_tongKets_StudentId",
                table: "tongKets");
        }
    }
}
