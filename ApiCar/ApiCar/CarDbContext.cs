using ApiCar.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar
{
    public class CarDbContext : DbContext
    {
        public CarDbContext(DbContextOptions opciones) : base(opciones)
        {

        }

        public DbSet<Autos> Autos { get; set; }
        public DbSet<Modelo> Modelo { get; set; }
        public DbSet<Marca> Marca { get; set; }
        public DbSet<Ciudad> Ciudad { get; set; } 
        public DbSet<Detalle> Detalle { get; set; }

        protected override void OnModelCreating(ModelBuilder Create)
        {
            new Autos.MapeoAutos(Create.Entity<Autos>());
            new Modelo.MapeoModelo(Create.Entity<Modelo>());
            new Marca.MapeoMarca(Create.Entity<Marca>());
            new Ciudad.MapeoCiudad(Create.Entity<Ciudad>());
        }
    }
}