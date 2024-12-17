import { Router } from "express";
import { createUser } from "../controllers/authController";
import { validateRegister } from "../middleware/validatorRegister.middleware";

export const router = Router();

/**
 * @swagger
 * /register:
 *   post:
 *     summary: Inscrire un nouvel utilisateur à la base de données
 *     tags:
 *       - Authentication
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               first_name:
 *                 type: string
 *               last_name:
 *                 type: string
 *               email:
 *                 type: string
 *               password:
 *                 type: string
 *               role:
 *                 type: string
 *             required:
 *               - first_name
 *               - last_name
 *               - email
 *               - password
 *               - role
 *     responses:
 *       201:
 *         description: Utilisateur ajouté avec succès.
 *       400:
 *         description: Données invalides ou manquantes.
 */
router.post("/register", validateRegister, createUser);