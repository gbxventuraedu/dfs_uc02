import logo from "../../../img/logo.svg";
import "./style.css";

function Index() {
  return (
    <div className="logo">
      <img src={logo} alt="Alfala logo" className="logo-img" />
      <p>
        <strong>Alfala</strong>Books
      </p>
    </div>
  );
}

export default Index;
