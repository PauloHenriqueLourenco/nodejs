const restful = require('node-restful')
const mongoose = restful.mongoose

const provaSchema = new mongoose.Schema()

module.exports = restful.model('Prova',provaSchema)