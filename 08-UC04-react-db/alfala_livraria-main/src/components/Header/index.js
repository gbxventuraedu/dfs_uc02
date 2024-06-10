import Logo from "../Logo";
import OptionsHeader from "../OptionsHeader";
import IconeHeader from "../IconesHeader";
import styled from "styled-components";

const HeaderContainer = styled.header`
  background-color: #fff;
  display: flex;
  justify-content: space-around;
`;
function Header() {
  return (
    <HeaderContainer>
      <Logo />
      <OptionsHeader />
      <IconeHeader />
    </HeaderContainer>
  );
}

export default Header;
