const nome = "Gabriel";

function calcularMedia(n1, n2, n3, n4) {
  const media = (n1 + n2 + n3 + n4) / 4;
  return media;
}

function obterSituacao(media) {
  if (media >= 6) {
    return "Aprovado";
  } else if (media >= 5) {
    return "Recuperação";
  } else {
    return "Reprovado";
  }
}

const notas = {
  n1: 5.5,
  n2: 6.5,
  n3: 9,
  n4: 10,
};

const { n1, n2, n3, n4 } = notas;
const media = calcularMedia(n1, n2, n3, n4);
const situacao = obterSituacao(media);

console.log(
  `Olá ${nome}, sua média é ${media.toFixed(1)} e você está ${situacao}.`
);
