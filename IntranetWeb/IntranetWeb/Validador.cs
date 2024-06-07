using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IntranetWeb
{
    public class Validador
    {
        private string rutUsuario;
        private string estado;

        public Validador() { 
        
            rutUsuario = string.Empty;
            estado = string.Empty;

        }

        // Encapsulamiento que trabajara con estado
        public string xEstado { 
            get { return estado; } 
        }

        //Constructor que valida si Rut viene vacío
        public void ValidaVacio(string RutTxt)
        {
            String rut = RutTxt;
            if (rut == string.Empty)
            {
                this.rutUsuario = rut;
                this.estado = "Debe ingresar el RUT del nuevo colaborador";
            }
            else
            {
                this.rutUsuario = rut;
                this.estado = "Correcto";
            }
        }

        //Constructor que valida que dígito verificado es solo 1
        public void ValidaNumDigVerificador(string RutTxt)
        {
            String rut = RutTxt;
            String[] rutArray = rut.Split('-');

            // Caso ideal: XXXXXXX-X
            // rutArray[0] = XXXXXXXXX
            // rutArray[1] = X
            // rutArray.Length == 2

            if (rutArray.Length == 2)
            {
                if (rutArray[1].Length != 1)
                {
                    // Caso 3: digito verificador debe tener largo 1
                    this.rutUsuario = rut;
                    this.estado = "El dígito verificador debe tener un sólo caracter";

                }
                else
                {
                    this.rutUsuario = rut;
                    this.estado = "Correcto";
                }
            }
        }

        ////Constructor que valida que formato sea correcto
        //public void ValidaFormato(string RutTxt)
        //{
        //    String rut = RutTxt;

        //}

        //Constructor que obtiene el RutTxt desde TextBox
        public void ValidaDigito(string RutTxt)
        {
            // Validar que rut tenga formato xxxx-x 8.058.535-7
            String rut = RutTxt;

            rut = rut.PadLeft(10, '0');

            int n0 = int.Parse(rut[0].ToString()) * 3;
                        int n1 = int.Parse(rut[1].ToString()) * 2;
            int n2 = int.Parse(rut[2].ToString()) * 7;
            int n3 = int.Parse(rut[3].ToString()) * 6;
            int n4 = int.Parse(rut[4].ToString()) * 5;
            int n5 = int.Parse(rut[5].ToString()) * 4;
            int n6 = int.Parse(rut[6].ToString()) * 3;
            int n7 = int.Parse(rut[7].ToString()) * 2;

            double suma = n0 + n1 + n2 + n3 + n4 + n5 + n6 + n7;
            double div11 = suma / 11;
            int entero = (int)div11;
            double dec = div11 - entero;
            double digito = 11 - (11 * (dec));
            digito = Math.Round(digito);

            if (digito.ToString() == rut[9].ToString())
            {
                this.rutUsuario = rut;
                this.estado = "Correcto";
            }
            else if (digito == 11 && rut[9].ToString() == "0")
            {
                this.rutUsuario = rut;
                this.estado = "Correcto";
            }
            else if (digito == 10 && rut[9].ToString() == "K")
            {
                this.rutUsuario = rut;
                this.estado = "Correcto";
            }
            else
            {
                this.rutUsuario = rut;
                this.estado = "Error en dígito verificador";
            }

        }

    }
}