using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class percentage : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Perecntage",
                table: "Sales",
                newName: "Percentage");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Percentage",
                table: "Sales",
                newName: "Perecntage");
        }
    }
}
