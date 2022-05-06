const express = require('express');
const { routes }  = require('../routes');
 
const app = express();

routes.forEach((route) => {
  const { method, path, middleware, controller } = route;
  app[method](path, ...middleware, controller);
});


module.exports = app;
