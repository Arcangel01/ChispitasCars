using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar.Models
{
    public class Detalle
    {
        [Key]
        public int CODIGO { get; set; }
        public string MARCA { get; set; }
        public string MODELO { get; set; }
        public string PLACA { get; set; }
        public int PUERTAS { get; set; }
        public string CIUDAD { get; set; }
        public DateTime FECHA { get; set; }

        public class MapeoDet
        {
            public MapeoDet(EntityTypeBuilder<Detalle> mapDet)
            {

                mapDet.ToTable("VEHICULO");
            }
        }
    }
}
