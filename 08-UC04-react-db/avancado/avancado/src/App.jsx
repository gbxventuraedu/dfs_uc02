import "./App.css";

// 11 - Importando Hooks - useState
import Dados from "./componentes/Dados";

function App() {
  return (
    <div className="AppAvancado">
      <h1>Próximos passos React JS</h1>
      <img src="./Ibirapuera.jpg" width={500} />
      <img src="./SP.jpg" alt="Imagem de Cima, São Paulo" width={500} />
      <Dados />
    </div>
  );
}

export default App;
