import styled from "styled-components";
const Opcoes = styled.ul`
  display: flex;
`;
const Opcao = styled.li`
  font-size: 1.125rem;
  font-weight: 400;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  height: 100%;
  padding: 0 5px;
  cursor: pointer;
  min-width: 120px;
`;
const textoOpcoes = ["CATEGORIAS", "FAVORITOS", "MINHA ESTANTE"];
function OptionsHeader() {
  return (
    <Opcoes>
      {textoOpcoes.map((texto) => (
        <Opcao>
          <p>{texto}</p>
        </Opcao>
      ))}
    </Opcoes>
  );
}

export default OptionsHeader;