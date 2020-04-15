const createServer = require('./drivers/server')
const db = require('./drivers/db')

const port = 3000

const start = async () => {
  try {
    await db.authenticate()
    createServer.listen(port, () => console.log(`Connected to port ${port}`))
  } catch (e) {
    console.log(e)

    throw new Error(e)
  }
}

start()
