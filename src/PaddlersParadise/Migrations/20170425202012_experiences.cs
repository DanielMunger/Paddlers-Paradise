using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PaddlersParadise.Migrations
{
    public partial class experiences : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Experience_AspNetUsers_experienceUserId",
                table: "Experience");

            migrationBuilder.DropForeignKey(
                name: "FK_Experience_RiverRuns_riverRunid",
                table: "Experience");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Experience",
                table: "Experience");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Experiences",
                table: "Experience",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Experiences_AspNetUsers_experienceUserId",
                table: "Experience",
                column: "experienceUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Experiences_RiverRuns_riverRunid",
                table: "Experience",
                column: "riverRunid",
                principalTable: "RiverRuns",
                principalColumn: "id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.RenameIndex(
                name: "IX_Experience_riverRunid",
                table: "Experience",
                newName: "IX_Experiences_riverRunid");

            migrationBuilder.RenameIndex(
                name: "IX_Experience_experienceUserId",
                table: "Experience",
                newName: "IX_Experiences_experienceUserId");

            migrationBuilder.RenameTable(
                name: "Experience",
                newName: "Experiences");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Experiences_AspNetUsers_experienceUserId",
                table: "Experiences");

            migrationBuilder.DropForeignKey(
                name: "FK_Experiences_RiverRuns_riverRunid",
                table: "Experiences");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Experiences",
                table: "Experiences");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Experience",
                table: "Experiences",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Experience_AspNetUsers_experienceUserId",
                table: "Experiences",
                column: "experienceUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Experience_RiverRuns_riverRunid",
                table: "Experiences",
                column: "riverRunid",
                principalTable: "RiverRuns",
                principalColumn: "id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.RenameIndex(
                name: "IX_Experiences_riverRunid",
                table: "Experiences",
                newName: "IX_Experience_riverRunid");

            migrationBuilder.RenameIndex(
                name: "IX_Experiences_experienceUserId",
                table: "Experiences",
                newName: "IX_Experience_experienceUserId");

            migrationBuilder.RenameTable(
                name: "Experiences",
                newName: "Experience");
        }
    }
}
