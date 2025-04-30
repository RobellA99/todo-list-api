import express from "express";
import {
  addItem,
  getItems,
  getItemsByCategory,
} from "../controllers/itemControllers.js";

const router = express.Router();

router.route("/").get(getItems).post(addItem);
router.route("/category").get(getItemsByCategory);

export default router;
