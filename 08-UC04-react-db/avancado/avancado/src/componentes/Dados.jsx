import { useState } from "react";

const Dados = () => {
  let mostreDados = 15;

  // Atribuindo novo valor
  const [novoNumero, setNovoNumero] = useState(15);

  return (
    <div>
      <p>Valor: {mostreDados}</p>

      {/* Exibindo novo valor atribuido */}
      <p>Novo valor: {novoNumero}</p>

      {/* Exibindo um novo valor através de um evento */}
      <button onClick={() => setNovoNumero(10)}>
        Mudando o valor após click
      </button>
    </div>
  );
};

export default Dados;
