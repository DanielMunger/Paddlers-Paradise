using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Metadata;

namespace PaddlersParadise.Migrations
{
    public partial class RemoveExp : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Experiences");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Experiences",
                columns: table => new
                {
                    id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    ApplicationUserId = table.Column<string>(nullable: true),
                    experienceDescription = table.Column<string>(nullable: true),
                    postedTime = table.Column<DateTime>(nullable: false),
                    riverRunid = table.Column<int>(nullable: true),
                    userId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Experiences", x => x.id);
                    table.ForeignKey(
                        name: "FK_Experiences_AspNetUsers_ApplicationUserId",
                        column: x => x.ApplicationUserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Experiences_RiverRuns_riverRunid",
                        column: x => x.riverRunid,
                        principalTable: "RiverRuns",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Experiences_ApplicationUserId",
                table: "Experiences",
                column: "ApplicationUserId");

            migrationBuilder.CreateIndex(
                name: "IX_Experiences_riverRunid",
                table: "Experiences",
                column: "riverRunid");
        }
    }
}
