module.exports = function(app) {
  var express = require('express');
  var projectsRouter = express.Router();

  projectsRouter.get('/', function(req, res) {
    res.send({
      'projects': [
        { id: "10", name: "Agile Product" },
        { id: "11", name: "Mobile Product" },
        { id: "12", name: "Base Dev" }
      ]
    });
  });

  projectsRouter.post('/', function(req, res) {
    res.status(201).end();
  });

  projectsRouter.get('/:id', function(req, res) {
    res.send({
      'projects': {
        id: req.params.id
      }
    });
  });

  projectsRouter.put('/:id', function(req, res) {
    res.send({
      'projects': {
        id: req.params.id
      }
    });
  });

  projectsRouter.delete('/:id', function(req, res) {
    res.status(204).end();
  });

  app.use('/api/v1/projects', projectsRouter);
};
