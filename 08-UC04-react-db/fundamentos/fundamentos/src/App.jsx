import './App.css';
import PrimeiroComponentes from './componentes/PrimeiroComponentes';

// Importando TemplateExpressions
import TemplateExpressions from './componentes/TemplateExpressions';

// Exibindo componente importado na tela
function App() {
  return(
    <div className="AppFundamentos">
      <h1>Primeiros Fundamentos</h1>
      <PrimeiroComponentes/>
      <TemplateExpressions/>
    </div>
  )
}

export default App;
