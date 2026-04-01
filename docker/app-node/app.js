const express = require('express');
const { Pool } = require('pg');

const app = express();

const pool = new Pool({
  host: 'vm-db',
  user: 'devops',
  password: '123456',
  database: 'appdb',
  port: 5432
});

app.get('/', async (req, res) => {
  try {
    const result = await pool.query('SELECT NOW()');
    res.send(`DB OK: ${result.rows[0].now}`);
  } catch (err) {
    res.send(`Erro: ${err.message}`);
  }
});

app.listen(3000, () => {
  console.log('App rodando na porta 3000');
});
