const addClients = document.querySelector('.client-card');

const fetchApi = () => {
  addClients.innerHTML = '<h2 class =\'loading\'>Carregando...</h2>';
  fetch(`http://localhost:3001/clients`)
   .then((response) => response.json()
   .then((dados) => {
     addClients.innerHTML = '';
  }));
  };

  window.onload = () => { 
    fetchApi();
   };