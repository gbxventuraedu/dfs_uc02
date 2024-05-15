import '../App.css';
import HierarquiaComponentes from './HierarquiaComponentes';

const PrimeiroComponentes = () => {
  return (
    <div>
        <h2 className='h2First'>Meu primeiro componente</h2>
        <HierarquiaComponentes/>
    </div>
    
  )
}

export default PrimeiroComponentes;