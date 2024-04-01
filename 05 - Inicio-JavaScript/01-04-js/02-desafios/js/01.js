//1. Escreva um programa em JavaScript que solicite dois números ao usuário e exiba o maior número no console. Utilize uma estrutura de decisão if para comparar os números e exibir o maior número no console.

let n1 = parseInt(prompt(`Digite o PRIMEIRO número: `));
let n2 = parseInt(prompt(`Digite o SEGUNDO número: `));

if(n1 > n2){
    console.log(`O ${n1} é maior!`);
}
else{
    console.log(`O ${n2} é maior!`);
}
