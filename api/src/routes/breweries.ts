import { Router } from "express";
import { createBrewery, deleteBreweryById, getBreweries, getBreweryById, updateBrewery } from "../controllers/breweriesController";
export const router = Router();

router.get("/", getBreweries);
router.get("/:id", getBreweryById);
router.post("/:user_id", createBrewery);
router.put("/:brewery_id", updateBrewery);
router.delete("/:id", deleteBreweryById)