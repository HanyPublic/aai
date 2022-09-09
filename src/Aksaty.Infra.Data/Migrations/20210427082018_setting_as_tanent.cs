using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class setting_as_tanent : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Settings");

            migrationBuilder.CreateTable(
                name: "Tanents",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Name = table.Column<string>(type: "varchar(100)", nullable: true),
                    Email = table.Column<string>(type: "varchar(100)", nullable: true),
                    Mobile = table.Column<string>(type: "varchar(100)", nullable: true),
                    Address = table.Column<string>(type: "varchar(100)", nullable: true),
                    Currency = table.Column<string>(type: "varchar(100)", nullable: true),
                    MonthCount = table.Column<int>(nullable: false),
                    Perecntage = table.Column<decimal>(type: "decimal(11, 8)", nullable: false),
                    Logo = table.Column<string>(type: "varchar(100)", nullable: true),
                    Colors = table.Column<string>(type: "varchar(100)", nullable: true),
                    Note = table.Column<string>(type: "varchar(100)", nullable: true),
                    SignatureArray = table.Column<string>(type: "varchar(100)", nullable: true),
                    StampAttachment = table.Column<string>(type: "varchar(100)", nullable: true),
                    UserId = table.Column<string>(type: "varchar(100)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tanents", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Tanents_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Tanents_UserId",
                table: "Tanents",
                column: "UserId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Tanents");

            migrationBuilder.CreateTable(
                name: "Settings",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Address = table.Column<string>(type: "varchar(100)", nullable: true),
                    Colors = table.Column<string>(type: "varchar(100)", nullable: true),
                    Currency = table.Column<string>(type: "varchar(100)", nullable: true),
                    Email = table.Column<string>(type: "varchar(100)", nullable: true),
                    Logo = table.Column<string>(type: "varchar(100)", nullable: true),
                    Mobile = table.Column<string>(type: "varchar(100)", nullable: true),
                    MonthCount = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "varchar(100)", nullable: true),
                    Note = table.Column<string>(type: "varchar(100)", nullable: true),
                    Perecntage = table.Column<decimal>(type: "decimal(11, 8)", nullable: false),
                    SignatureArray = table.Column<string>(type: "varchar(100)", nullable: true),
                    StampAttachment = table.Column<string>(type: "varchar(100)", nullable: true),
                    UserId = table.Column<string>(type: "varchar(100)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Settings", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Settings_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Settings_UserId",
                table: "Settings",
                column: "UserId");
        }
    }
}
