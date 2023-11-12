public static void AlterarRef (int numero)
{
  numero = numero + 500;
}
1 referência 
public static void AlterarOut(int numero)
{
numero = numero + 50;
}

0 referências 
public static void Main()
{
int x = 5; 
AlterarRef(x); 
Console.WriteLine(x);

int y = 8; 
AlterarOut(y); 
Console.WriteLine(y);

}