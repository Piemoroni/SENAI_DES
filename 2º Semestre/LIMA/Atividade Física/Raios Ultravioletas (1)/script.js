// Lanterna UV com mensagem iluminada pelo feixe
const container = document.querySelector('.lanterna-uv-container');
const lanterna = container.querySelector('.lanterna-uv');
const botao = document.getElementById('btn-lanterna');
const beam = document.getElementById('beam');
const slider = document.getElementById('intensidade');
const mensagem = container.querySelector('.mensagem-uv');

botao.addEventListener('click', () => {
  const ligada = lanterna.classList.toggle('on');
  botao.setAttribute('aria-pressed', ligada);
  container.classList.toggle('on', ligada);

  if (!ligada) {
    beam.style.opacity = 0;
    mensagem.style.color = 'transparent';
    mensagem.style.textShadow = 'none';
    mensagem.style.animation = 'none';
  } else {
    mensagem.style.animation = 'pulsar 2s infinite';
  }
});

// Controle de intensidade do feixe e da mensagem
slider.addEventListener('input', () => {
  const valor = slider.value / 100;
  if (lanterna.classList.contains('on')) {
    beam.style.opacity = valor;
    // Mensagem aparece gradualmente conforme intensidade
    mensagem.style.color = `rgba(210,170,255, ${valor})`;
    mensagem.style.textShadow = `0 0 ${valor * 25}px rgba(200,150,255, ${valor})`;
  }
});