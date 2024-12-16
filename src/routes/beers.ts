import { Router } from "express";
import { getBeers, createBeer, getBeerById, updateBeer, deleteBeerById } from "../controllers/beersController";
export const router = Router();

router.get("/", getBeers);
router.get("/:id", getBeerById);
router.post("/:brewery_id", createBeer);
router.put("/:id", updateBeer);
router.delete("/:id", deleteBeerById)