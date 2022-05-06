const express = require('express');
const cors = require('cors');
const { routes }  = require('../routes');
 
const app = express();

app.use(cors());

routes.forEach((route) => {
  const { method, path, middleware, controller } = route;
  app[method](path, ...middleware, controller);
});


module.exports = app;
