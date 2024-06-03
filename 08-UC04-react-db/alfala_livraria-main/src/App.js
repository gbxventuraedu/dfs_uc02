import Logo from './components/Logo';
import './App.css';
import OptionsHeader from './components/OptionsHeader';
import IconeHeader from './components/IconesHeader';


function App() {
  return (
    <div className="App">
      <header className='App-header'>
        <Logo />
        <OptionsHeader />
        <IconeHeader />

      </header>
    </div>
  );
}


export default App;
