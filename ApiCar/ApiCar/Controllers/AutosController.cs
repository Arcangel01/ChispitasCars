using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiCar.Models;
using ApiCar.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ApiCar.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AutosController : ControllerBase
    {
        private readonly AutosService _service;
        public AutosController(AutosService service)
        {
            _service = service;
        }

        // Metodo Http para la ciudades
        [HttpGet] //api/autos/ciudad
        [Route("ciudad")]
        public IActionResult obtCiudad()
        {
            var result = _service.obtenerCiudad();
            return Ok(result);
        }

        // Metodo Http para las marcas
        [HttpGet]//api/autos/marcas
        [Route("marcas")]
        public IActionResult obtMarca()
        {
            var result = _service.obtenerMarcas();
            return Ok(result);
        }

        // Metodo Http para los modelos
        [HttpGet]//api/autos/modelos/4
        [Route("modelos/{CodigoMarca}")]
        public IActionResult obtModelos(int CodigoMarca)
        {
            return Ok(_service.obtenerModelos(CodigoMarca));
        }

        // Metodo Http para todo el detalle
        [HttpGet] //api/autos/cars
        [Route("cars")]
        public IActionResult listaAutos(int CodigoMarca)
        {
            return Ok(_service.listaAutos());
        }

        // Metodo para almacenar
        [HttpPost] //api/autos/detalle
        [Route("detalle")]
        public IActionResult Agregar([FromBody] Autos _autos)
        {
            var result = _service.agregarAutos(_autos);
            if (result)
            {
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }
    }
}