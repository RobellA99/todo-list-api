import express from "express";
import {
  getItems,
  getItemsByCategory,
} from "../controllers/itemControllers.js";

const router = express.Router();

router.route("/").get(getItems);
router.route("/category").get(getItemsByCategory);

export default router;
