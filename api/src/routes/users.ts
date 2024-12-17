import { Router } from "express";
import { getUsers, getUserById, getUserFavoritesById, createUser, updateUser, deleteUserById } from "../controllers/usersController";
export const router = Router();

/**
 * @swagger
 * /users:
 *   get:
 *     summary: Récupérer tous les utilisateurs et leurs informations publiques
 *     tags:
 *       - Users
 *     responses:
 *       200:
 *         description: Liste des utilisateurs récupérée avec succès.
 *       404:
 *         description: Liste des utilisateurs non trouvée.
 */
router.get("/", getUsers);

/**
 * @swagger
 * /users/{id}:
 *   get:
 *     summary: Récupérer les informations d'un utilisateur précis
 *     tags:
 *       - Users
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de l'utilisateur
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Utilisateur trouvé.
 *       404:
 *         description: Utilisateur introuvable.
 */
router.get("/:id", getUserById);

/**
 * @swagger
 * /users/fave/{id}:
 *   get:
 *     summary: Récupérer les favoris d'un utilisateur précis
 *     tags:
 *       - Users
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de l'utilisateur
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Utilisateur trouvé.
 *       404:
 *         description: Utilisateur introuvable.
 */
router.get("/fave/:id", getUserFavoritesById);

/**
 * @swagger
 * /users:
 *   post:
 *     summary: Ajouter un utilisateur à la base de données
 *     tags:
 *       - Users
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
router.post("/", createUser);

/**
 * @swagger
 * /users/{id}:
 *   put:
 *     summary: Modifier un utilisateur de la base de données
 *     tags:
 *       - Users
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de l'utilisateur
 *         schema:
 *           type: integer
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
 *     responses:
 *       201:
 *         description: Utilisateur modifié avec succès.
 *       400:
 *         description: Données invalides ou manquantes.
 */
router.post("/:id", updateUser);

/**
 * @swagger
 * /users/{id}:
 *   delete:
 *     summary: Supprimer une bière grâce à son ID
 *     tags:
 *       - Users
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de l'utilisateur à supprimer
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Utilisateur supprimé avec succès.
 *       404:
 *         description: Utilisateur introuvable.
 */
router.delete("/:id", deleteUserById)