// Aqui está como você pode interpretar essa expressão regular:
// ^ - Representa o inicio da string
// [0 - 9] - Representa qualquer dígito númerico de 0 a 9
// + - Inidica que o dígito pode ocorrer uma ou mais vezes
// $ - Representa o final da string

// 01 - Exemplo ===============================
// const regex = /^\d+$/;

// const string1 = "12345";
// const string2 = "abc123";
// const string3 = "987654321";

// console.log(regex.test(string1)); //true
// console.log(regex.test(string2)); //false
// console.log(regex.test(string3)); //true

// 02 - Exemplo ===============================
// const regex = /[A-Za-z]+$/;

// console.log(regex.test("abcd")); // true
// console.log(regex.test("abc123")); // false

// // 03 - Email =================================
// const regex = /^[\w-]+(\.[\w-]+@([\w-]+\.)+[a-zA-Z]{2,7})$/;

// console.log(regex.test("EMAIL@gmail.com")); // false

// // 04 - Exemplo ===============================
// const regex = /\d+/g;
// const string = "Eu tenho 3 maçãs e 5 laranjas";
// const numeros = string.match(regex);
// console.log(numeros);

// 05 - verifique se o número do celular é valido ===============================
const regex = /^(\+55)?\s?(?:\(?\d{2}\)?\s?)?(?:9\s?)?[6-9]\d{3}\s?\-?\d{4}$/;
function verificaCelular(numero) {
  return regex.test(numero);
}

const numeroTelefone = prompt("Digite um número de telefone: ");

// Verificar se o nýmero é valido
const ehValido = verificaCelular(numeroTelefone);

// Exibir o resultado
if (ehValido) {
  console.log(`O número ${numeroTelefone} é válido!`);
} else {
  console.log(`O número ${numeroTelefone} não é válido!`);
}
