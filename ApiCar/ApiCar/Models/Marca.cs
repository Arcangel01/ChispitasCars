using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar.Models
{
    public class Marca
    {
        public int ID_MARCA { get; set; }
        public string NOMBRE_MARCA { get; set; }

        public class MapeoMarca
        {
            public MapeoMarca(EntityTypeBuilder<Marca> mapMarca)
            {
                mapMarca.HasKey(x => x.ID_MARCA);
                mapMarca.Property(x => x.NOMBRE_MARCA);
                mapMarca.ToTable("MARCA");
            }
        }
    }

}
