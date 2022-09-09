using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class tanent_image : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "ImageId",
                table: "Tanents",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Tanents_ImageId",
                table: "Tanents",
                column: "ImageId");

            migrationBuilder.AddForeignKey(
                name: "FK_Tanents_Attachments_ImageId",
                table: "Tanents",
                column: "ImageId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tanents_Attachments_ImageId",
                table: "Tanents");

            migrationBuilder.DropIndex(
                name: "IX_Tanents_ImageId",
                table: "Tanents");

            migrationBuilder.DropColumn(
                name: "ImageId",
                table: "Tanents");
        }
    }
}
