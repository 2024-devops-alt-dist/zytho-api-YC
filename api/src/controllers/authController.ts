import { Request, Response } from "express";
import { pool } from "../config/db";
import bcrypt from "bcrypt";

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