
const connection = require('./connection');

const getClients = async () => {
  const [rows] = await connection.execute('SELECT * FROM clientes');
  return rows;
}; 

module.exports = {
getClients
 };