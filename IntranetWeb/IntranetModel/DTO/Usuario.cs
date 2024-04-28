using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace IntranetModel.DTO
{

    public enum RolUsuario
    {
        Colaborador, Administrador, Gerencia
    }

    public enum TipoContrato
    {
        Indefinido, Definido
    }

    public class Usuario
    {
        private string nombre;
        private string apellido;
        private DateTime fechaNacimiento;
        private string rutUsuario;
        private string gerencia;
        private string subgerencia;
        private string departamento;
        private string ubicacion;
        private string jefe;
        private RolUsuario rolUsuario;
        private TipoContrato tipoContrato;
        private DateTime fechaIngreso;
        private DateTime fechaTermino;
        private string email;
        private int celular;
        private string info;

        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public DateTime FechaNacimiento { get => fechaNacimiento; set => fechaNacimiento = value; }
        public string RutUsuario { get => rutUsuario; set => rutUsuario = value; }
        public string Gerencia { get => gerencia; set => gerencia = value; }
        public string Subgerencia { get => subgerencia; set => subgerencia = value; }
        public string Departamento { get => departamento; set => departamento = value; }
        public string Ubicacion { get => ubicacion; set => ubicacion = value; }
        public string Jefe { get => jefe; set => jefe = value; }
        public RolUsuario RolUsuario { get => rolUsuario; set => rolUsuario = value; }
        public TipoContrato TipoContrato { get => tipoContrato; set => tipoContrato = value; }
        public DateTime FechaIngreso { get => fechaIngreso; set => fechaIngreso = value; }
        public DateTime FechaTermino { get => fechaTermino; set => fechaTermino = value; }
        public string Email { get => email; set => email = value; }
        public int Celular { get => celular; set => celular = value; }
        public string Info { get => info; set => info = value; }
    }
}
