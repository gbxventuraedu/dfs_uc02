import fs from "fs";

function getTodosLivros() {
  return JSON.parse(fs.readFileSync("livros.json"));
}
function getLivroPorId(id) {
  const livros = JSON.parse(fs.readFileSync("livros.json"));
  const livroFiltrado = livros.filter((livro) => livro.id === id)[0];
  return livroFiltrado;
}

function insereLivro(livroNovo) {
  const livros = JSON.parse(fs.readFileSync("livros.json"));
  const novaListaDeLivros = [...livros, livroNovo];
  fs.writeFileSync("livros.json", JSON.stringify(novaListaDeLivros));
}
function modificaLivro(modificacoes, id) {
  let livroAtuais = JSON.parse(fs.readFileSync("livros.json"));
  const indiceModificado = livroAtuais.findIndex((livro) => livro.id === id);
  const conteudoMudado = {
    ...livroAtuais[indiceModificado],
    ...modificacoes,
  };
  livroAtuais[indiceModificado] = conteudoMudado;
  fs.writeFileSync("livro.json", Json.stringify(livroAtuais));
}

export { getTodosLivros, getLivroPorId, insereLivro, modificaLivro };
