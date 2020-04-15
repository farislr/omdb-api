const express = require('express')
const bodyParser = require('body-parser')
const morgan = require('morgan')
const dotenv = require('dotenv')

const app = express()
dotenv.config()

const movies = require('./movies')
const auth = require('../middlewares/auth')

app.use(morgan('dev'))
app.use(bodyParser.json())
app.use(auth)

app.use('/movies', movies)

module.exports = app
