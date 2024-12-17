import { Request, Response } from "express";
import { pool } from "../config/db";
import bcrypt from "bcrypt";

// ** CRUD **
// Récupérer tous les utilisateurs
export const getUsers = async (req: Request, res: Response) => {
  try {
    const data = await pool.query(
      `SELECT users.first_name, users.last_name, users.email, users.role
        FROM users`
    );
    res.status(200).json({ users: data.rows });
  } catch (error: any) {
    console.error("Erreur lors de la récupération des utilisateurs", error);
    res.status(500).send(error.message);
  }
};

// Récupérer toutes les informations d'un utilisateur précis.
export const getUserById = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const beer = await pool.query(
      `SELECT *
        FROM users
        WHERE users.user_id = $1`,
      [id]
    );
    res.status(200).json({ beer: beer.rows[0] });
  } catch (error: any) {
    console.error(`Erreur lors de la récupération de la utilisateur`, error);
    res.status(500).send(error.message);
  }
};

// Récupérer les bières favorites pour un utilisateur précis.
export const getUserFavoritesById = async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      const favoritesBeers = await pool.query(
        `SELECT beers.beer_id, beers.name, beers.price, beers.picture_url
        FROM users 
        JOIN favorites
        ON users.user_id = favorites.user_id
        JOIN beers
        ON beers.beer_id = favorites.beer_id
        WHERE users.user_id = $1`,
        [id]
      );
      res.status(200).json({ favorites: favoritesBeers.rows[0] });
    } catch (error: any) {
      console.error(`Erreur lors de la récupération des favoris de l'utilisateur`, error);
      res.status(500).send(error.message);
    }
  };

// Créer un nouvel utilisateur -- Mot de passe enregistré hashé avec bCrypt
export const createUser = async (req: Request, res: Response) => {
  try {
    const { first_name, last_name, email, password, role } = req.body;
    const hash = await bcrypt.hash(password, 13)
    console.log(hash, password)
    const newUser = await pool.query(
      `INSERT INTO users (first_name, last_name, email, password, role)
        VALUES ($1, $2, $3, $4, $5) RETURNING *`,
      [first_name, last_name, email, hash, role]
    );
    res.status(201).json({ user: newUser.rows[0] });
  } catch (error: any) {
    console.error("Erreur lors de la création de la utilisateur", error);
    res.status(500).send(error.message);
  }
};

// Mettre à jour les informations d'un utilisateur
export const updateUser = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const { first_name, last_name, email, password, role } = req.body;
    const updatedUser = await pool.query(
      `UPDATE users
        SET first_name = $1, last_name = $2, email = $3, password = $4, role = $5
        WHERE user_id = $6
        RETURNING *`,
      [first_name, last_name, email, password, role, id]
    );
    res.status(201).json({ user: updatedUser.rows[0] });
  } catch (error: any) {
    console.error("Erreur lors de la création de l'utilisateur", error);
    res.status(500).send(error.message);
  }
};

// Supprimer un utilisateur par son id
export const deleteUserById = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const deletedUser = await pool.query(
      `DELETE FROM users
        WHERE user_id = $1
        RETURNING *`,
      [id]
    );
    res.status(201).json({ beer: deletedUser.rows[0] })
  } catch (error: any ) {
    console.error("Erreur lors de la suppression de l'utilisateur", error);
  }
};
