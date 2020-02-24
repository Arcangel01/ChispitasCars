using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar.Models
{
    public class Ciudad
    {
        public int ID_CIUDAD { get; set; }
        public string NOMBRE_CIUDAD { get; set; }

        public class MapeoCiudad
        {
            public MapeoCiudad(EntityTypeBuilder<Ciudad> mapCiudad)
            {
                mapCiudad.HasKey(x => x.ID_CIUDAD);
                mapCiudad.Property(x => x.NOMBRE_CIUDAD);
                mapCiudad.ToTable("CIUDAD");
            }
        }
    }

}
