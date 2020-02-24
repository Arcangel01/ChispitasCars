using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar.Models
{
    public class Modelo
    {
        public int ID_MODELO { get; set; }
        public string NOMBRE_MODELO { get; set; }
       // public int ID_MARCA { get; set; }
        
       // public Marca Marca { get; set; }
        public class MapeoModelo
        {
            public MapeoModelo(EntityTypeBuilder<Modelo> mapModelo)
            {
                mapModelo.HasKey(x => x.ID_MODELO);
                mapModelo.Property(x => x.NOMBRE_MODELO);
               // mapModelo.Property(x => x.ID_MARCA);
                mapModelo.ToTable("MODELO");
               // mapModelo.HasOne(x => x.Marca);
            }
        }
    }
}
