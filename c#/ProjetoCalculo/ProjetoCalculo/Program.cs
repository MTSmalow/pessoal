using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoCalculo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            decimal valorA;
            decimal valorB;
            valorA = 1.3m;
            valorB = 3;
            double r = Convert.ToDouble( valorA * valorB);
            double comp = 3.9;

            comp = Math.Round(r, 2);            
            r = Math.Round(r,2); //arredonda o numero caso ele seja um double, ja que ele possui uma margem de erro
            // decimal utilizado para guardar dinheiro ja que ele nao possui margem de erro
            if (r == comp)
            {
                Console.WriteLine("valor correto");
            }
            else if (r == 65)
            {
                Console.WriteLine("valor certo é igual a 65");
            }
            else
            {
                Console.WriteLine("valor errado");
            }
            Console.WriteLine("o valor é igual a:" + r);
            Console.ReadKey();
        }
    }
}
