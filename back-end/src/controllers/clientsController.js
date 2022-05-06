const service = require('../services/clientsService');

const getClients = async (req, res) => {
  const clients = await service.getClients();
  res.status(200).json(clients);
};

module.exporta = { getClients };