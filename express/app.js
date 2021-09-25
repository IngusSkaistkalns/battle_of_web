const express = require("express");
const app = express();
const port = 3000;

app.get("/numbers", (req, res) => {
  let i = 0;
  let numbers = [];

  while (i < 1000) {
    numbers.push(Math.round(Math.random() * 10_000));
    i += 1;
  }

  res.send(
    `<html><head><title>Numbers</title></head><body><h1>Battle</h1>${numbers.join(
      ", "
    )}</body></html>`
  );
});

app.listen(port, () => {
  console.log(`Example app listening at http://0.0.0.0:${port}`);
});
