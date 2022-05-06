const addClients = document.querySelector('.client-grid');

function createCustomElement(element, className, innerText) {
  const item = document.createElement(element);
  item.className = className;
  item.innerText = innerText;
  return item;
}

function phoneMask (telefone) {
  return telefone.replace(/\D/g, '')
    .replace(/^(\d)/, '($1')
    .replace(/^(\(\d{2})(\d)/, '$1) $2')
    .replace(/(\d{4})(\d{1,5})/, '$1-$2')
    .replace(/(-\d{5})\d+?$/, '$1');
}

function createClientCard({ nome, sobrenome, email_address, telefone, uf }) {

  const section = document.createElement('section');
  section.className = 'client-card';
  section.appendChild(createCustomElement('span', 'client-name', `${nome} ${sobrenome}`));
  section.appendChild(createCustomElement('span', 'client-email', email_address));
  section.appendChild(createCustomElement('span', 'client-phone', phoneMask(telefone)));
  section.appendChild(createCustomElement('span', 'client-state', `estado: ${uf}`));

  return section;
}

const fetchApi = () => {
  addClients.innerHTML = '<h2 class =\'loading\'>Carregando...</h2>';
  fetch(`http://localhost:3001/clients`)
   .then((response) => response.json()
   .then((dados) => {
    addClients.innerHTML = '';
    dados.map(({ nome, sobrenome, email_address, telefone, uf }) =>
    addClients.appendChild(createClientCard({
    nome, sobrenome, email_address, telefone, uf })));
   }));
   };

  window.onload = () => { 
    fetchApi();
   };