const service = require('../services/clientService');

const getClients = async (req, res) => {
  const clients = await service.getClients();
  res.status(200).json(clients);
};

module.exports = { getClients };