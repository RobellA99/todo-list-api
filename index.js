import express from "express";
import cors from "cors";
import "dotenv/config";

const PORT = process.env.PORT || 5050;

const app = express();
app.use(express.json());

app.use(cors());

app.get("/", (_req, res) => {
  res.send("App is running...");
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
