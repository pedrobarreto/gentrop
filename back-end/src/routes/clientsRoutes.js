const { getClients } = require('../controllers/clientsController');


const clientsRouter = [
  {
    method: 'get',
    path: '/clients',
    middleware: [],
    controller: getClients,
  },
];

module.exports = { clientsRouter };