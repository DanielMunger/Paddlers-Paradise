﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using PaddlersParadise.Models;

namespace PaddlersParadise.Models
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
        {

        }
        public virtual DbSet<RiverRun> RiverRuns { get; set; }
        //public virtual DbSet<Experience> Experiences { get; set; } Return to when DB is fixed.
        public virtual DbSet<ApplicationUser> purplepeopleeaters { get; set; }
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=DESKTOP-GC3DC7B\SQLEXPRESS;Database=PaddlersParadise;integrated security=True");
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}