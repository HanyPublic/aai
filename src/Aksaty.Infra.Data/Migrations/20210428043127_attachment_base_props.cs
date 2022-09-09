using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class attachment_base_props : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DateCreated",
                table: "Attachments");

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedAt",
                table: "Attachments",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "CreatedById",
                table: "Attachments",
                type: "varchar(100)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "ShowOnWebsite",
                table: "Attachments",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "TanentId",
                table: "Attachments",
                type: "varchar(100)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedAt",
                table: "Attachments");

            migrationBuilder.DropColumn(
                name: "CreatedById",
                table: "Attachments");

            migrationBuilder.DropColumn(
                name: "ShowOnWebsite",
                table: "Attachments");

            migrationBuilder.DropColumn(
                name: "TanentId",
                table: "Attachments");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateCreated",
                table: "Attachments",
                type: "datetime2",
                nullable: true);
        }
    }
}
