import express from "express";
import cors from "cors";
import "dotenv/config";
import categoryRoutes from "./routes/categoryRoutes.js";
import itemRoutes from "./routes/itemRoutes.js";

const PORT = process.env.PORT || 5050;

const app = express();
app.use(express.json());

app.use(cors({ origin: process.env.FRONT_END_URL }));

app.get("/", (_req, res) => {
  res.send("App is running...");
});

app.use("/category", categoryRoutes);
app.use("/items", itemRoutes);

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
