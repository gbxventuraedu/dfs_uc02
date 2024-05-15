const TemplateExpressions = () => {
    // Declarando nome
 const nome = "Ana Cunha";

 // - Objeto
 const dados = {
  idade: 21,
  profissao: "Programador",
 }
 //
 
  return (  
    <div>
     <p>A soma é {10 + 10}</p>
     <h3>Boa-Vindas {nome}</h3>
     <p>Vi aqui que você tem: {dados.idade} anos e você é {dados.profissao}.</p>
    </div>
  )
}

export default TemplateExpressions;