const numeros = [5,50,80,1,2,3,5,8,7,11,15,22,27]
maiores = []
a = 0
while(a != numeros.length){
    if(numeros[a] > 10){
        maiores.push(numeros[a])
    }
    a++
}
console.log(maiores)