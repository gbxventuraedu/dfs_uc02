const btn = document.querySelector("#my-button")

btn.addEventListener("click", function () {
    console.log("Clicou!")
})

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
