using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class sales_base_entity : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedAt",
                table: "Sales",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "CreatedById",
                table: "Sales",
                type: "varchar(100)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "Deleted",
                table: "Sales",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "ShowOnWebsite",
                table: "Sales",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "TanentId",
                table: "Sales",
                type: "varchar(100)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedAt",
                table: "Sales");

            migrationBuilder.DropColumn(
                name: "CreatedById",
                table: "Sales");

            migrationBuilder.DropColumn(
                name: "Deleted",
                table: "Sales");

            migrationBuilder.DropColumn(
                name: "ShowOnWebsite",
                table: "Sales");

            migrationBuilder.DropColumn(
                name: "TanentId",
                table: "Sales");
        }
    }
}
