using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar.Models
{
    public class Autos
    {
        public int ID_VEHICULO { get; set; }
        public int ID_MARCA { get; set; }
        public int ID_MODELO { get; set; }
        public string PLACA { get; set; }
        public int PUERTAS { get; set; }
        public int ID_CIUDAD { get; set; }
        public DateTime FECHA { get; set; }

        public class MapeoAutos
        {
            public MapeoAutos(EntityTypeBuilder<Autos> mapAutos)
            {
                mapAutos.HasKey(x => x.ID_VEHICULO);
                mapAutos.Property(x => x.ID_MARCA);
                mapAutos.Property(x => x.ID_MODELO);
                mapAutos.Property(x => x.PLACA);
                mapAutos.Property(x => x.PUERTAS);
                mapAutos.Property(x => x.ID_CIUDAD);
                mapAutos.Property(x => x.FECHA);
                mapAutos.ToTable("VEHICULO");
            }
        }
    }
}
