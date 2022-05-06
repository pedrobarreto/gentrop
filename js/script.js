const fetchApi = () => {
  fetch(`http://localhost:3001/clients`)
   .then((response) => response.json()
   .then((dados) => {
     console.log(dados);
  }));
  };

  window.onload = () => { 
    fetchApi();
   };