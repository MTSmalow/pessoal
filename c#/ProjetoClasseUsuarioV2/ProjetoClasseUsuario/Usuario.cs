using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoClasseUsuario
{
    public class Usuario
    {
        string nome;
        int idade;
        string endereco;
        string email;

        public string Nome
        {
            get
            {
                return nome;
            }
            set
            {
                if (value.Length > 5)
                {
                    nome = value.ToUpper();
                }
                else
                {
                    throw new Exception("Nome invalido");
                }
                
            }
        }

        public int Idade { get => idade; set => idade = value; }
        public string Endereco { get => endereco; set => endereco = value; }
        public string Email { get => email; set => email = value; }


        public override string ToString()
        {
            return  nome+ " "+ email + " "+ idade;
        }

        public void preencheDados()
        {
            Console.WriteLine("digite seu nome");
            this.Nome= Console.ReadLine();

            Console.WriteLine("digite seu email");
            this.Email= Console.ReadLine();

            Console.WriteLine("digite sua idade");
            this.Idade = Convert.ToInt32(Console.ReadLine());
        }

        public void ExibirUsuario()
        {
            Console.WriteLine("___________________________");
            Console.WriteLine("nome: " +this.Nome);
            Console.WriteLine("Email: " +this.Email);
            Console.WriteLine("Idade: " + this.Idade);
            Console.WriteLine("___________________________");
        }
        
    }
}
