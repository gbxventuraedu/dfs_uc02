// // função 1
// const minhaFuncaoEmVariavel = function(txt){
//     console.log(`Imprimindo: ${txt}`)
// }
// minhaFuncaoEmVariavel('Hello World!');
//====================================================================================
// //função 2
// function calcMedia(nota1, nota2, nota3){
//     return `A média é: ${(nota1 + nota2 + nota3) / 3}`
// }
// console.log(calcMedia(10, 5, 7))
//====================================================================================
// //função 3
// const a = 10;
// const b = 20;
// const c = 30;
// const d = 40;
// function soma(n1,n2){
//     return `A soma entre ${n1} e ${n2} é: ${n1 + n2}`;
// }
// console.log(soma(a,b));
//====================================================================================
// //função 4
// function raizQuadrada(n1) {
//     return `A raiz quadrada de ${n1} é: ${Math.sqrt(n1)}`;
// }
// console.log(raizQuadrada(9));
//====================================================================================
//// função 5
// const raizQuadrada = (n1) => {
//     return `A raiz quadrada de ${n1} é: ${Math.sqrt(n1)}`;
// }
// console.log(raizQuadrada(32));
//====================================================================================
////Função 6
// const testeArrowFunction = () => {
//     return`Essa é uma arrow Functions`;
// }
// console.log(testeArrowFunction());
//====================================================================================
////Função 7
// const parOuImpar = (n) => {
//     if(n % 2 == 0){
//         return `${n} é Par`;
//     }
//     else if(n % 1 == 0){
//         return `${n} é Impar`;
//     }
//     else{
//         return `${n} não é Par ou Impar`;
//     }
// }
// console.log(parOuImpar(1));
//====================================================================================
////função 8

// const lista = [1,2,3,4,5,6,7,8,9,10];
// console.log(lista[4]);
// console.log(lista[1]);
// console.log(lista[0]);
// console.log(lista[6]);
// console.log(lista.length);

const lista2 = [
    "Fusca",
    "variant",
    "Chevete",
    "Golf",
    "Opalada",
    "Brasilia"
];
for (let i = 0; i < lista2.length; i++) {
    console.log(`Elemento ${i}: ${lista2[i]}`);
}

