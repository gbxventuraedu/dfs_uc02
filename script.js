// const pessoa1 = {
//   nome: "joao",
//   idade: 20,
//   sexo: "Masculino",
// };
// const pessoa2 = {
//   nome: "Roberto",
//   idade: 50,
//   sexo: "Masculino",
// };
// const pessoa3 = {
//   nome: "Marcia",
//   idade: 34,
//   sexo: "Feminino",
// };

// function falar(pessoa) {
//   const { nome, idade, sexo } = pessoa;
//   console.log(`Me chamo ${nome}, tenho ${idade} anos e sou do sexo ${sexo}`);
// }
// falar(pessoa1, pessoa2, pessoa3);

class Pessoa {
  constructor(nome, idade, sexo) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
  }
}
const falar = (pessoa) => {
  const { nome, idade, sexo } = pessoa;
  console.log(`Me chamo ${nome}, tenho ${idade}, sou ${sexo}`);
};
const pessoa1 = new Pessoa("Gabriel", 20, "Masculino");
falar(pessoa1);
