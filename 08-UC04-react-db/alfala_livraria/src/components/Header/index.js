import IconesHeader from "./IconesHeader/index";
import Logo from "./Logo/index";
import OptionsHeader from "./OptionsHeader/index";
import "./style.css";

const Header = () => {
  return (
    <header className="App-header">
      <Logo />
      <OptionsHeader />
      <IconesHeader />
    </header>
  );
};

export default Header;
