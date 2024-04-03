// console.log(document.body);
// console.log(document.body.childNodes);
// console.log(document.body.chieldNodes[1]);
// console.log(document.body.chieldNodes[1].childNodes[1].TextContent);

//1- seleciona por tag
const listItens = document.getElementsByTagName("li");
console.log(listItens);

//2- seleciona por id
const title = document.getElementById("title");
console.log(title);

//3- seleciona por classe
const products = document.getElementsByClassName("product");
console.log(products);

//4- Seleciona por elemento css
const productQuery = document.querySelectorAll(".product");
console.log(productQuery);

const mainContainer = document.querySelector("#main-container");
console.log(mainContainer);

// 5 - insertBefore
const p = document.createElement("p");
const header = title.parentElement;
console.log(header);
header.insertBefore(p, title);

// 6 - appendChild
//adicionar elementos dentro de outro sendo elemento add ultimo elemento pai
const navLinks = document.querySelector("nav ul");
const li = document.createElement("li");
navLinks.appendChild(li);

// 8 - replaceChild
// troca um elemento com base no elemento pai
const h2 = document.createElement("h2");
header.replaceChild(h2, title);
// elemento novo e elemento a ser trocado

// 9 - createTextNode
// colocar um elemento dentro do outro
const myText = document.createTextNode("Agora vamos colocar mais um título");

const h3 = document.createElement("h3");
h3.appendChild(myText);
mainContainer.appendChild(h3);

// 10 - trabalhando com atributos
const firstLink = navLinks.querySelector("a");
// 1 - teste pegamos apenas o primeiro elemento a
console.log(firstLink);
// 2 - teste - Alteramos o atributo href do elemento
firstLink.setAttribute("href", "https://google.com");
// 3 - teste - pegamos o atributo do elemento href
firstLink.getAttribute("href");
// 4 - teste - fazendo o atributo abrir numa nova aba
firstLink.setAttribute("target", "_blank");

// 11 - posicao do elemento
mainContainer.style.color = "red";
mainContainer.style.backgroundColor = "#333";
mainContainer.style.paddingBottom = "15px";
