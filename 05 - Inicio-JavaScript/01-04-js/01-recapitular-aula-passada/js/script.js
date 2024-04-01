
  
// console.log("Olá mundo!");
// console.log('Olá mundo 2');
// console.log(`Olá mundo ${(1*3)}`);

// // Exemplo variável
// let nome = 'Gabriel';
// const idade = 38;
// var profissao = 'programador'

// // exemplo console.log 01
// console.log(nome + idade +profissao);

// // exemplo console.log 02
// console.log(`${nome} ${idade} ${profissao}`);

// // exemplo console.log 03
// console.log(`Olá ${nome}, sua idade é ${idade}. Você é um ${profissao}.`);

// // exemplo console.log 04 & pular linha com \n
// console.log("Usuário:" + nome + "\n Idade: " + idade + "\n Profissão: " + profissao);

// //exemplo parseint
// let idade = parseInt(prompt("Digite sua idade: "));
// alert(`Você tem ${idade} anos de idade.`);

// let idade2 = idade + 10;


// alert(`Daqui 10 anos você terá ${idade2}.`)

// let nome = prompt(`Digite seu nome: `);
// let sobrenome = prompt(`Digite seu sobrenome: `);
// alert(`O nome completo é ${nome + " " +sobrenome}`);

//  Exemplo if/else
// let idade = parseInt(prompt(`Digite sua idade: `));
// if(idade >= 18){
//     alert(`Você tem ${idade}, portanto, tem maior idade!`);
// }
// else{
//     alert(`Você tem ${idade}, portante é menor de idade`);
// }

// let idade = parseInt(prompt(`Digite sua idade: `));

// if(idade >= 18){
//     alert(`Idade informada: ${idade}.\n  Você pode entrar!`);
// }
// else if(idade >= 15 && idade <18){
//     alert(`Idade informada: ${idade}.\n  Você pode entrar acompanhado com os pais!`);
// }
// else{
//     alert(`Idade informada: ${idade}.\n  Você não pode entrar pois tem menos de 15 anos.`)
// }

// //exemplo de for
// for(let i = 0; i <= 50; i++){
//     console.log(`O valor de ir é: ${i}`);
// }

// let p = 0;
// while(p < 5){
//     console.log(`Repetindo ${p}`);
//     p++;
// }

// let g = 10;
// do{
//     console.log(`Valor de G ${g}`);
//     g = g - 1;
// }while(g > 1)

// const trabalho = prompt("Digite seu trabalho: ")

switch(trabalho){
    case "front-end":
       alert("Você faz sites!");
        break;
    case "back-end":
        alert("Você faz aplicações e banco de dados!");
        break;
    case "full-stack":
        alert("Você faz tudo!");
        break;
    default:
        alert("A opções são: \nfront-end \nback-end \nfull-stack")
}






