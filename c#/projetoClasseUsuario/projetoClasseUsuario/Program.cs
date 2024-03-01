using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace projetoClasseUsuario
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Usuario fulano;
            fulano = new Usuario();


            Usuario beltrano;
            beltrano = fulano;

            fulano.Nome = "fulano de tal";
            beltrano.Idade= 18;
            beltrano.Email = "pepeu@hotlady.com";

            Console.WriteLine(fulano);
            Console.ReadKey();  
        }
    }
}
