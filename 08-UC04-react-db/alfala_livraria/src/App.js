import Header from "./components/Header";
import styled from "styled-components";

const AppContainer = styled.div`
  width: 100vw;
  height: 100vh;
  background-image: linear-gradient(180deg, #002f52 40%, #326589 165%);
  .content {
    min-height: 100vh;
  }
`;
function App() {
  return (
    <AppContainer>
      <Header />
    </AppContainer>
  );
}

export default App;
