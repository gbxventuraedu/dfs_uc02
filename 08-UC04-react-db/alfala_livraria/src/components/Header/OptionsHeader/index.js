import "./style.css";

const textoOpcoes = ["CATEGORIA", "FAVORITOS", "MINHA ESTANTE"];

const OptionsHeader = () => {
  return (
    <ul className="opcoes">
      {textoOpcoes.map((texto) => (
        <li className="opcao">
          <p>{texto}</p>
        </li>
      ))}
    </ul>
  );
};

export default OptionsHeader;