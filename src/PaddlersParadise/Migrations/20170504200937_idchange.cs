using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PaddlersParadise.Migrations
{
    public partial class idchange : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Experiences_AspNetUsers_experienceUserId",
                table: "Experiences");

            migrationBuilder.DropIndex(
                name: "IX_Experiences_experienceUserId",
                table: "Experiences");

            migrationBuilder.DropColumn(
                name: "experienceUserId",
                table: "Experiences");

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "Experiences",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "userId",
                table: "Experiences",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Experiences_ApplicationUserId",
                table: "Experiences",
                column: "ApplicationUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Experiences_AspNetUsers_ApplicationUserId",
                table: "Experiences",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Experiences_AspNetUsers_ApplicationUserId",
                table: "Experiences");

            migrationBuilder.DropIndex(
                name: "IX_Experiences_ApplicationUserId",
                table: "Experiences");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "Experiences");

            migrationBuilder.DropColumn(
                name: "userId",
                table: "Experiences");

            migrationBuilder.AddColumn<string>(
                name: "experienceUserId",
                table: "Experiences",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Experiences_experienceUserId",
                table: "Experiences",
                column: "experienceUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Experiences_AspNetUsers_experienceUserId",
                table: "Experiences",
                column: "experienceUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
