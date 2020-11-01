const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => res.json({ time: +new Date() }));

app.listen(port, () => {
  console.log('Server started at: ' + port);
});
