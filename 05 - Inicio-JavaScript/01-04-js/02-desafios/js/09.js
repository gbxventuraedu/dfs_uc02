// 9. Escreva um programa em JavaScript que solicite uma operação matemática ao usuário (+, -, *, /) e dois números, e exiba o resultado da operação no console. Utilize uma estrutura de decisão switch para verificar qual operação matemática foi informada pelo usuário e realizar a operação correspondente. O resultado da operação deve ser exibido no console.
let n1 = parseInt(prompt("Digite o PRIMEIRO número: "));
let n2 = parseInt(prompt("Digite o SEGUNDO número: "));
let operacao = prompt("Digite a operação matemática");

do{
switch(operacao){
    case "+":
        console.log(`O resultado de ${n1} + ${n2} = ${n1 + n2}`);
        break;
    case "-":
        console.log(`O resultado de ${n1} - ${n2} = ${n1 - n2}`);
        break;
    case "*":
        console.log(`O resultado de ${n1} * ${n2} = ${n1 * n2}`);
        break;
    case "/":
        console.log(`O resultado de ${n1} / ${n2} = ${n1 / n2}`);
        break;
    default:
        console.log(`Somente + ou - ou * ou / `);
}
}while(operacao!= "sair");

