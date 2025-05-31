function initScrollTop() {
  const btn = document.createElement('button');
  btn.innerHTML = '&#x25B2;';
  Object.assign(btn.style, {
    position: 'fixed',
    bottom: '20px',
    right:  '20px',
    padding: '10px 15px',
    background: '#5e1c1c',
    color: '#fff',
    border: 'none',
    borderRadius: '5px',
    cursor: 'pointer',
    display: 'none',
    zIndex: 1000
  });
  document.body.appendChild(btn);

  window.addEventListener('scroll', () => {
    btn.style.display = window.scrollY > 200 ? 'block' : 'none';
  });

  btn.addEventListener('click', () =>
    window.scrollTo({ top: 0, behavior: 'smooth' })
  );
}

window.addEventListener('load', initScrollTop);
