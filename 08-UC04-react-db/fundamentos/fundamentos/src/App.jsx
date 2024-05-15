import './App.css';
import HierarquiaComponentes from './componentes/HierarquiaComponentes';
import PrimeiroComponentes from './componentes/PrimeiroComponentes';
import TemplateExpressions from './componentes/TemplateExpressions';
import EventoClick from './componentes/EventoClick';


// Exibindo componente importado na tela
function App() {
  return(
    <div className="AppFundamentos">
      <h1>Primeiros Fundamentos</h1>
      <PrimeiroComponentes/>
      <TemplateExpressions/>
      <HierarquiaComponentes/>
      <EventoClick />
    </div>
  )
}
export default App;
