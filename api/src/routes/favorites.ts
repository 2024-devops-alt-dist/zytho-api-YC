import { Router } from "express";
import { getUserFavoritesById, newFavoriteBeerById, deleteFavoriteBeerById } from "../controllers/favoritesController";
export const router = Router();


/**
 * @swagger
 * /fave/{user_id}/{beer_id}:
 *   post:
 *     summary: Ajouter une bière en favoris pour un utilisateur connecté
 *     tags:
 *       - Favorites
 *     parameters:
 *       - name: user_id
 *         in: path
 *         required: true
 *         description: ID de l'utilisateur connecté
 *         schema:
 *           type: integer
 *       - name: beer_id
 *         in: path
 *         required: true
 *         description: ID de la bière aimée
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Bière ajoutée aux favoris.
 *       404:
 *         description: Bière introuvable.
 */
router.post("/:user_id/:beer_id", newFavoriteBeerById);

/**
 * @swagger
 * /fave/{user_id}/{beer_id}:
 *   delete:
 *     summary: Supprimer une bière en favoris pour un utilisateur connecté
 *     tags:
 *       - Favorites
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de l'utilisateur connecté
 *         schema:
 *           type: integer
 *       - name: beer_id
 *         in: path
 *         required: true
 *         description: ID de la bière aimée
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Bière supprimée des favoris.
 *       404:
 *         description: Bière introuvable.
 */
router.delete("/:user_id/:beer_id", deleteFavoriteBeerById);

/**
 * @swagger
 * /fave/{user_id}:
 *   get:
 *     summary: Récupérer les favoris d'un utilisateur précis
 *     tags:
 *       - Favorites
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
router.get("/:user_id", getUserFavoritesById);