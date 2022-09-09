using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class product_image : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAttachments_Attachments_AttachmentId",
                table: "CustomerAttachments");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAttachments_Customers_CustomerId",
                table: "CustomerAttachments");

            migrationBuilder.DropForeignKey(
                name: "FK_Customers_Attachments_ImageId",
                table: "Customers");

            migrationBuilder.AddColumn<Guid>(
                name: "ImageId",
                table: "Products",
                nullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "ImageId",
                table: "Customers",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AlterColumn<Guid>(
                name: "CustomerId",
                table: "CustomerAttachments",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AlterColumn<Guid>(
                name: "AttachmentId",
                table: "CustomerAttachments",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.CreateIndex(
                name: "IX_Products_ImageId",
                table: "Products",
                column: "ImageId");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerAttachments_Attachments_AttachmentId",
                table: "CustomerAttachments",
                column: "AttachmentId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerAttachments_Customers_CustomerId",
                table: "CustomerAttachments",
                column: "CustomerId",
                principalTable: "Customers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Customers_Attachments_ImageId",
                table: "Customers",
                column: "ImageId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Products_Attachments_ImageId",
                table: "Products",
                column: "ImageId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAttachments_Attachments_AttachmentId",
                table: "CustomerAttachments");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAttachments_Customers_CustomerId",
                table: "CustomerAttachments");

            migrationBuilder.DropForeignKey(
                name: "FK_Customers_Attachments_ImageId",
                table: "Customers");

            migrationBuilder.DropForeignKey(
                name: "FK_Products_Attachments_ImageId",
                table: "Products");

            migrationBuilder.DropIndex(
                name: "IX_Products_ImageId",
                table: "Products");

            migrationBuilder.DropColumn(
                name: "ImageId",
                table: "Products");

            migrationBuilder.AlterColumn<Guid>(
                name: "ImageId",
                table: "Customers",
                type: "uniqueidentifier",
                nullable: false,
                oldClrType: typeof(Guid),
                oldNullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "CustomerId",
                table: "CustomerAttachments",
                type: "uniqueidentifier",
                nullable: false,
                oldClrType: typeof(Guid),
                oldNullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "AttachmentId",
                table: "CustomerAttachments",
                type: "uniqueidentifier",
                nullable: false,
                oldClrType: typeof(Guid),
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerAttachments_Attachments_AttachmentId",
                table: "CustomerAttachments",
                column: "AttachmentId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerAttachments_Customers_CustomerId",
                table: "CustomerAttachments",
                column: "CustomerId",
                principalTable: "Customers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Customers_Attachments_ImageId",
                table: "Customers",
                column: "ImageId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
