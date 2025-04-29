import express from "express";
import { getItems } from "../controllers/itemControllers.js";

const router = express.Router();

router.route("/").get(getItems);

export default router;
