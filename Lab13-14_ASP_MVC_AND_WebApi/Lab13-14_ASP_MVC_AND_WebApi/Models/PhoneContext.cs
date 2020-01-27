using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace Lab13_14_ASP_MVC_AND_WebApi.Models
{
    public class PhoneContext : DbContext
    {
        public DbSet<Phone> Phones { get; set; }
    }
}