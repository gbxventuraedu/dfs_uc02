//4. Escreva um programa em JavaScript que solicite um número ao usuário e exiba a tabuada desse número de 1 a 10. Utilize uma estrutura de repetição while ou for para calcular e exibir a tabuada do número informado pelo usuário. O resultado deve ser exibido no console.

let n = parseInt(prompt('Digite um número: '));
for (let i = 1; i < 11; i++) {
  console.log(`~[${i} * ${n} = ${i * n}]~`);
}

let contador = 0;
while(contador <= 10){
  console.log(`${contador} + ${contador} = ${contador + contador}`);
  contador++
}

