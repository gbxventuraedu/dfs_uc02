//2. Escreva um programa em JavaScript que solicite um número ao usuário e verifique se ele é par ou ímpar. Utilize uma estrutura de decisão if para verificar se o número é par ou ímpar, e exiba a mensagem correspondente no console.

let n3 = parseInt(prompt("Digite O PRIMEIRO número: "));

if(n3 %2 == 0){
    console.log(`O ${n3} é par`)
}
else{
    console.log(`O ${n3} é impar`)
}
