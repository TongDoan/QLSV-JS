using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace QLSV.Migrations
{
    /// <inheritdoc />
    public partial class mb : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "LanThi",
                table: "ketQuas");

            migrationBuilder.RenameColumn(
                name: "Diem",
                table: "ketQuas",
                newName: "DiemTongKet");

            migrationBuilder.AddColumn<double>(
                name: "DiemCuoiKy",
                table: "ketQuas",
                type: "float",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "DiemQuaTrinh",
                table: "ketQuas",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DiemCuoiKy",
                table: "ketQuas");

            migrationBuilder.DropColumn(
                name: "DiemQuaTrinh",
                table: "ketQuas");

            migrationBuilder.RenameColumn(
                name: "DiemTongKet",
                table: "ketQuas",
                newName: "Diem");

            migrationBuilder.AddColumn<int>(
                name: "LanThi",
                table: "ketQuas",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
