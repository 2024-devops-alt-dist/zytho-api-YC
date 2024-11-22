const { Pool } = require('pg')

export const pool = new Pool({
    host:'localhost',
    port: 5432,
    user: 'myuser',
    password: 'mypassword',
    database: 'zythologue'
});
  
