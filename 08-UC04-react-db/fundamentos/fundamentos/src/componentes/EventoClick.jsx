const EventoClick = () => {
  // Função com handleClick
  const handleClick = () => {
    alert("Botão com função de alerta");
  };

  const renderizando = (x) => {
    if (x) {
      return <h3>Rendizando X</h3>;
    } else {
      return <h3>Renderizando Y</h3>;
    }
  };

  return (
    <div>
      <div>
        <button onClick={() => console.log("Teste Click")}>Clique aqui</button>
      </div>
      <div>
        <button onClick={handleClick}>Botão com função</button>
      </div>
      {/* True */}
      {renderizando(" ")}
      {/* False */}
      {renderizando()}
    </div>
  );
};
export default EventoClick;
