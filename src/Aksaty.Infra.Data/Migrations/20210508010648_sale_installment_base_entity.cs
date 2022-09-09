using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class sale_installment_base_entity : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedAt",
                table: "SaleInstallments",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "CreatedById",
                table: "SaleInstallments",
                type: "varchar(100)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "Deleted",
                table: "SaleInstallments",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "ShowOnWebsite",
                table: "SaleInstallments",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "TanentId",
                table: "SaleInstallments",
                type: "varchar(100)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedAt",
                table: "SaleInstallments");

            migrationBuilder.DropColumn(
                name: "CreatedById",
                table: "SaleInstallments");

            migrationBuilder.DropColumn(
                name: "Deleted",
                table: "SaleInstallments");

            migrationBuilder.DropColumn(
                name: "ShowOnWebsite",
                table: "SaleInstallments");

            migrationBuilder.DropColumn(
                name: "TanentId",
                table: "SaleInstallments");
        }
    }
}
