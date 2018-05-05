const express = require('express')

module.exports = function(server) {

  // API Routes
  const router = express.Router()
  server.use('/api', router)

  // rotas da API
  const provaService = require('../api/prova/provaService')
  provaService.register(router, '/provas')
}