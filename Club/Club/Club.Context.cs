﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Club
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ClbEntities : DbContext
    {
        public ClbEntities()
            : base("name=ClbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Club> Clubs { get; set; }
        public virtual DbSet<Ctaegorie> Ctaegories { get; set; }
        public virtual DbSet<login> logins { get; set; }
        public virtual DbSet<Paiment> Paiments { get; set; }
        public virtual DbSet<SousCatgorie> SousCatgories { get; set; }
    }
}