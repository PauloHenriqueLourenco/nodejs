const restful = require('node-restful')
const mongoose = restful.mongoose

const optionSchema = new mongoose.Schema({
    text: { type: String, required: true },
    value: { type: String, required: true }
})

const questionSchema = new mongoose.Schema({
    text: { type: String, required: true },
    type: { type: String, required: true },
    options: [optionSchema]
})

const provaSchema = new mongoose.Schema({
    name: { type: String, required: true},
    description: { type: String, required: true},
    category: { type: String, required: true},
    basepoints: { type: Number, required: true},
    startDate: { type: String, required: true},
    endDate: { type: String, required: true},
    isActive: { type: String, required: true},
    alreadyAnswered: { type: String, required: true},
    questions: [questionSchema]
})

module.exports = restful.model('Prova',provaSchema)