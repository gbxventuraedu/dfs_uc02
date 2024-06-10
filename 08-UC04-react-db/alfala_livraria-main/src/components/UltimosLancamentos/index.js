import { livros } from "./dadosUltimosLancamentos";
import { Titulo } from "../Titulo";
import CardRecomenda from "../CardRecomenda";
import imagemLivro from "../../img/livro2.png";
import styled from "styled-components";

const UltimosLancamentosContainer = styled.section`
  background-color: #ebecee;
  padding-bottom: 20px;
  display: flex;
  flex-direction: column;
`;
const NovosLivrosContainer = styled.div`
  margin-top: 30px;
  display: flex;
  width: 100%;
  justify-content: center;
  cursor: pointer;
`;

function UltimosLancamentos() {
  return (
    <UltimosLancamentosContainer>
      <Titulo cor="#EB9B00" tamanhoFonte="36px">
        Últimos Lançamentos
      </Titulo>
      <NovosLivrosContainer>
        {livros.map((livro) => (
          <img src={livro.src} alt="" />
        ))}
        <CardRecomenda
          titulo="Talvez você se interesse por"
          subtitulo="Angular 11"
          descricao="Construindo uma aplicação com a plataforma Google"
          img={imagemLivro}
        ></CardRecomenda>
      </NovosLivrosContainer>
    </UltimosLancamentosContainer>
  );
}
export default UltimosLancamentos;
