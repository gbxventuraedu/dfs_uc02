const btn = document.querySelector("#my-button");

btn.addEventListener("click", function () {
  console.log("Clicou!");
});

// Test
const secondBtn = document.querySelector("#btn");

function imprimirMensagem() {
  console.log("Teste");
}
secondBtn.addEventListener("click", imprimirMensagem);

const thirdBtn = document.querySelector("#other-btn");
thirdBtn.addEventListener("click", () => {
  console.log("Evento removido");
  secondBtn.removeEventListener("click", imprimirMensagem);
});

const title = document.querySelector("#my-title");

title.addEventListener("click", (event) => {
  // console.log(event);
  console.log(event.offsetX);
});

const containerBtn = document.querySelector("#btn-container");
const btnInsideContainer = document.querySelector("#div-btn");

containerBtn.addEventListener("click", () => {
  console.log("Evento 1");
});

btnInsideContainer.addEventListener("click", (e) => {
  console.log("Evento 2");
  e.stopPropagation();
});

// Fazer parar de funcionar a tag "a"
const a = document.querySelector("a");

a.addEventListener("click", (e) => {
  e.preventDefault();
  console.log("Não alterou a página.");
});

// // o que eu apertar vai constar no console.
// document.addEventListener("keyup", (e) => {
//   console.log(`Soltou a tecla ${e.key}`);
// });

// document.addEventListener("keydown", (e) => {
//   console.log(`Pressinou a tecla ${e.key}`);
// });

// // eventos com o mouse
// const mouseEvents = document.querySelector("#mouse");
// mouseEvents.addEventListener("mousedown", () => {
//   console.log("Soltou o botão!");
// });

// mouseEvents.addEventListener("mouseup", () => {
//   console.log("Soltou o botão.");
// });

// mouseEvents.addEventListener("dblclick", () => {
//   console.log("Click duplo.");
// });

// // descer a página
// window.addEventListener("scroll", (e) => {
//   if (window.scrollY > 200) {
//     console.log("Passamos 200px!");
//   }
// });

//mostrar a data
const dataAtual = new Date();

console.log(dataAtual);

//obter o dia do mês
const dia = dataAtual.getDate();
console.log(`Dia: ${dia}`);

//Obter o mês
const mes = dataAtual.getMonth() + 1;
console.log(`Mês: ${mes}`);

//Obter o ano
const ano = dataAtual.getFullYear();
console.log(`Ano: ${ano}`);

// Obter a data completa formatada
const dataFormatada = `${dia}/${mes}/${ano}`;
console.log(`Data formatada: ${dataFormatada}`);

const frutas = ["Maçã", "Banana", "Laranja", "Pera", "Uva"];
// Encontrar a primeira fruta que começa com "L" usando `find()`
const frutaComL = frutas.find((fruta) => fruta.startsWith("L"));
console.log(`Fruta com L: ${frutaComL}`);

// percorrer todas as frutas e imprimir seus nomes usando foreach()
frutas.forEach((fruta) => console.log(`Nome da fruta: ${fruta}`));

//Mapear as frutas para seus tamanhos (em cm) usando `map()`
const tamanhosFrutas = frutas.map((fruta) => fruta.length);
console.log(`Tamanhos das frutas: ${tamanhosFrutas}`);

//Juntar os nomes das frutas em uma string usando `join()`
const listaFrutas = frutas.join(", ");
console.log(`Lista de frutas: ${listaFrutas}`);
