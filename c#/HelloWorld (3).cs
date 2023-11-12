public class Professor
{

protected readonly float salariomaximo; 
float salarioatual;

1 referência 
public Professor(float salarioMaximo)
{
salariomaximo = salarioMaximo;
}

2 referências 
protected float Modificarsalario(float Modf)
{
float novoSalario = salarioatual + Modf;

if (novoSalario < 0)
{
salarioatual = 0;
}
else if (novoSalario > salariomaximo)
{
salarioatual = salariomaximo;
}
else
salarioatual = novoSalario;
}
return salarioatual;
}

2 referências 
public float AumentaSalario()
{
return Modificarsalario(+500);
}

0 referências 
public float DiminuiSalario()
{
return Modificarsalario(-500);
}
