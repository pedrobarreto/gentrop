
 const model = require('../models/clientModel');

 const getClients = async () => model.getClients();

 module.exports = { getClients };