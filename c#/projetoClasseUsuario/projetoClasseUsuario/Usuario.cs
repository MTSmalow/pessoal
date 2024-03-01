using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace projetoClasseUsuario
{
    public class Usuario
    {
        string nome;
        int idade;
        string endereço;
        string email;

        public string Nome 
        { 
            get
            {
                return nome;
            }
            set
            {
                if(value.Length > 5) 
                {
                    nome = value.ToUpper();
                }
                else
                {
                    throw new Exception("Nome invalido");
                }
            }
                
        }

        public int Idade { get => idade; set => idade = value; } // arrowFunctiom , e igual a de cima mais de forma simplificada
        public string Endereço { get => endereço; set => endereço = value; }
        public string Email { get => email; set => email = value; }

        public override string ToString()
        {
            return nome+ " "+ email+ " "+ idade;
        }
    }
}
