using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoClasseUsuario
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Usuario> usuarios= new List<Usuario>();
            string continua = "s";

            while (continua == "s")
            {
                Usuario novoUsuario = new Usuario();
                novoUsuario.preencheDados();
                usuarios.Add(novoUsuario);

                Console.WriteLine("deseja continuar a cadastrar?s/n");
                continua = Console.ReadLine();
            }

            foreach(Usuario usuario in usuarios)
            {
                usuario.ExibirUsuario();
            }

            Console.ReadKey();
        }
    }
}
