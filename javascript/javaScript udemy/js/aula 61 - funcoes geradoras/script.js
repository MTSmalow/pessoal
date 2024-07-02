 function* geradora1() {
//toda vez que a funcao for chamada ela ira retoenar o proximo yield
    yield 'valor 1'

    yield 'valor 2'

    yield 'valor 3'
}

function* garador2() {
    let i = 0

    while(true){
        yield i;
        i++
    }
}
// const g2 = geradora2();
// console.log(g2.next().value);

function* geradora3(){
    yield 0;
    yield 1;
    yield 2;
}

function* geredora4(){
    yield* geradora3();
    yield 3;
    yield 4;
    yield 5;
}

// const g4 = geredora4();
// for(let valor of g4){
//     console.log(valor)
// }

function* geradora5() {
    yield function() {
        console.log('vim do y1')
    }

    return function() {
        console.log('vim do return')
    }
 //"vim do y2" nao ira aparecer pos o return finaliza o codigo naquele local

    yield function(){
        console.log('vim do y2');
    }
}

const g5 = geradora5();
const func1 = g5.next().value;
const func2 = g5.next().value;
func1();
func2();