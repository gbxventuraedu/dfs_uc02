import "./App.css";
// Criando um componente
const BemVindo = (props) => {
  return (
    <div className="div-teste">
      <h1>Bem-Vindo(a) {props.nome}</h1>
      <h3>Você tem: {props.idade}</h3>
    </div>
  );
};

function App() {
  return (
    <div className="App">
      <BemVindo nome="Rodolfo" idade="38" />
      <BemVindo nome="Ana" idade="19" />
      <BemVindo nome="Tatiane" idade="75" />
      <BemVindo nome="Joquebede" idade="61" />
      <hr />
    </div>
  );
}

export default App;
