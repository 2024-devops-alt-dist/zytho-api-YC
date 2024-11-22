import { Router } from "express";
export const router = Router();

import { beersController } from "../controllers/beersController";

router.get("/", beersController.get);
router.post("/", beersController.post);