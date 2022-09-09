using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Aksaty.Infra.Data.Migrations
{
    public partial class customer_attachments_image : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "EntityId",
                table: "Attachments");

            migrationBuilder.DropColumn(
                name: "EntityType",
                table: "Attachments");

            migrationBuilder.AddColumn<Guid>(
                name: "ImageId",
                table: "Customers",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "CustomerAttachments",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    AttachmentId = table.Column<Guid>(nullable: true),
                    CustomerId = table.Column<Guid>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerAttachments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CustomerAttachments_Attachments_AttachmentId",
                        column: x => x.AttachmentId,
                        principalTable: "Attachments",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.SetNull);
                    table.ForeignKey(
                        name: "FK_CustomerAttachments_Customers_CustomerId",
                        column: x => x.CustomerId,
                        principalTable: "Customers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.SetNull);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Customers_ImageId",
                table: "Customers",
                column: "ImageId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerAttachments_AttachmentId",
                table: "CustomerAttachments",
                column: "AttachmentId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerAttachments_CustomerId",
                table: "CustomerAttachments",
                column: "CustomerId");

            migrationBuilder.AddForeignKey(
                name: "FK_Customers_Attachments_ImageId",
                table: "Customers",
                column: "ImageId",
                principalTable: "Attachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetDefault);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Customers_Attachments_ImageId",
                table: "Customers");

            migrationBuilder.DropTable(
                name: "CustomerAttachments");

            migrationBuilder.DropIndex(
                name: "IX_Customers_ImageId",
                table: "Customers");

            migrationBuilder.DropColumn(
                name: "ImageId",
                table: "Customers");

            migrationBuilder.RenameColumn(
                name: "TanentId",
                table: "Attachments",
                newName: "EntityType");

            migrationBuilder.AddColumn<string>(
              name: "EntityType",
              table: "Attachments",
              type: "uniqueidentifier");

            migrationBuilder.AddColumn<Guid>(
                name: "EntityId",
                table: "Attachments",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));
        }
    }
}
