import IconesHeader from "./IconesHeader/IconesHeader";
import Logo from "./Logo/Logo";
import OptionsHeader from "./OptionsHeader/index";

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
