
import db from './db/db-connection.js';
import express from 'express'

const app = express()
const port = 3000

app.get('/api/sightings', async (req, res) => {
  try {
    const sightings = await db.query('SELECT * FROM sightings');
    res.send(sightings.rows);
  } catch (e) {
    return res.status(400).json({ e });
  }
});

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
