Algoritmo "forma de pagamento "

Var
 preco , forma , valorfinal ,valorparcela :real


Inicio
escreval("qual o preço")
leia(preco)
   escreval("qual sua forma de pagamento 1-a vista 2-parcelado em 5 vezes 3-parcelado em 10 vezes")
   leia(forma)
   escolha forma
   caso 1
    valorfinal<-preco-preco/100*10
   escreval ("tera 10% de desconto e o preço final sera " , precofinal)
   caso 2
   valorparcela<-preco/5
   escreval("sera pago 5 parcelas de" , valorparcela)
   caso 3
    valorfinal<-preco+preco/100*20
    valorparcela<-valorfinal/10
   escreval("tera acrecimo de 20% ficando " , valorfinal)
   escreval("cada parcela tera o valor de " , valorparcela)
   fimescolha
   

Fimalgoritmo