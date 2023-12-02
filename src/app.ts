import express from 'express';

const app = express();

app.get('/', (_req, res) => res.send("Hello World!"));

app.listen(3000, '0.0.0.0', () => {
  console.log('Express server started on port 3000');
});
