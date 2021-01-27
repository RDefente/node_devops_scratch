import express from 'express';
import cors from 'cors';

const app = express();
const port = 8040;

app.use(cors());

app.get('/', (req, res) => {
  res.json({
	  french: "Bonjour",
	  english: "Hello",
	  german: "Guten tag",
	  spanish: "Buenos dias"
  })
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})