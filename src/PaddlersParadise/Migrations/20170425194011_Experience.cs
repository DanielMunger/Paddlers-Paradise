using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Metadata;

namespace PaddlersParadise.Migrations
{
    public partial class Experience : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Experience",
                columns: table => new
                {
                    id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    experienceDescription = table.Column<string>(nullable: true),
                    experienceUserId = table.Column<string>(nullable: true),
                    postedTime = table.Column<DateTime>(nullable: false),
                    riverRunid = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Experience", x => x.id);
                    table.ForeignKey(
                        name: "FK_Experience_AspNetUsers_experienceUserId",
                        column: x => x.experienceUserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Experience_RiverRuns_riverRunid",
                        column: x => x.riverRunid,
                        principalTable: "RiverRuns",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Experience_experienceUserId",
                table: "Experience",
                column: "experienceUserId");

            migrationBuilder.CreateIndex(
                name: "IX_Experience_riverRunid",
                table: "Experience",
                column: "riverRunid");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Experience");
        }
    }
}
