using ApiCar.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace ApiCar.Services
{
    public class AutosService
    {
        private readonly CarDbContext _context;

        public AutosService(CarDbContext context)
        {
            _context = context;
        }
        // Listar la ciudad
        public List<Ciudad> obtenerCiudad()
        {
            var result = _context.Ciudad.ToList();
            return result;
        }
        // Listar las marcas
        public List<Marca> obtenerMarcas()
        {
            try
            {
                var result = _context.Marca.FromSql("SpListadoMarcas ").ToList();
                return result;
            }
            catch(Exception ex)
            {
                return new List<Marca>();
            }
        }
        // Listar los modelos
        public List<Modelo> obtenerModelos(int CodigoMarca)
        {
            /* var query = "SpListadoPorModelo @CodigoMarca={CodigoMarca}";
             query = string.Format(query, CodigoMarca);
             List<Modelo> Modelos = _context.Modelo.FromSql(query).ToList();
             return Modelos;*/
            try
            {
                var parametro = new SqlParameter("@CodigoMarca", CodigoMarca);
                var result = _context.Modelo.FromSql("SpListadoPorModelo @CodigoMarca", parametro).ToList();
                return result;
            }   
            catch(Exception ex)
            {
                return new List<Modelo>();
            }
           // var result = _context.Modelo.Include(x => x.Marca).ToList();
           // return result;
        }

        // Guardar los autos
        public Boolean agregarAutos(Autos _autos)
        {
            try
            {
                _context.Autos.Add(_autos);
                _context.SaveChanges();
                return true;
            }
            catch(Exception err)
            {
                return false;
            }
        }

        // Listar todos los vehiculos
        public List<Detalle> listaAutos()
        {
           
            try
            {
                var result = _context.Detalle.FromSql("SpListaVehiculos ").ToList();
                return result;
            }
            catch (Exception ex)
            {
                return new List<Detalle>();
            }
            
        }
    }
}
