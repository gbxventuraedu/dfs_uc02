import "./style.css";
import perfil from "../../../img/perfil.svg";
import sacola from "../../../img/sacola.svg";

const iconess = [perfil, sacola];

const Index = () => {
  return (
    <ul className="icones">
      {iconess.map((icone) => (
        <li className="icone">
          <img src={icone} alt="icones"></img>
        </li>
      ))}
    </ul>
  );
};

export default Index;
