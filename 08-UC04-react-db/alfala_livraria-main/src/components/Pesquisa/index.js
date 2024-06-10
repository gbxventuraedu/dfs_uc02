import styled from "styled-components";
import Input from "../Input";
import { useState } from "react";
import { livros } from "./dadosPesquisa";

const PesquisaContainer = styled.section`
  background-image: linear-gradient(90deg, #002f52 35%, #326589 165%);
  color: #fff;
  text-align: center;
  padding: 85px 0;
  height: 100%;
  width: 100%;
`;
const Titulo = styled.h2`
  color: #fff;
  font-size: 36px;
  text-align: center;
  width: 100%;
`;
const Subtitulo = styled.h3`
  font-size: 16px;
  font-weight: 500;
  margin-bottom: 40px;
`;
const Resultado = styled.div`
  display: flex;
  justify-content: space-around;
  align-items: center;
  margin-bottom: 20px;
  cursor: pointer;
  transition: 0.3s padding ease-in;
  p {
    width: 200px;
  }
  img {
    width: 100px;
  }
  &:hover {
    padding: 10px;
    font-size: 18px;
    color: #ccc;
  }
`;
function Pesquisa() {
  const [livrosPesquisados, setlivrosPesquisados] = useState([]);
  console.log(livrosPesquisados);
  return (
    <PesquisaContainer>
      <Titulo>Já sabe por onde começar? </Titulo>
      <Subtitulo>Encontre seu livro em nossa estante</Subtitulo>
      <Input
        placeholder="Escreva sua próxima leitura"
        onBlur={(evento) => {
          const textoDigitado = evento.target.value;
          const resultadoPesquisa = livros.filter((livro) =>
            livro.nome.includes(textoDigitado)
          );
          setlivrosPesquisados(resultadoPesquisa);
        }}
      />
      {livrosPesquisados.map((livro) => (
        <Resultado>
          <p>{livro.nome}</p>
          <img src={livro.src} alt="Livro" />
        </Resultado>
      ))}
    </PesquisaContainer>
  );
}

export default Pesquisa;
