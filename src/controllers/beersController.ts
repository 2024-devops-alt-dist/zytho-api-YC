import { Request, Response } from "express";
import { pool } from "../config/db";

export const beersController = {
    get: async (req: Request, res: Response) => {
        try {
           const data = await pool.query("SELECT beers.name, beers.price, beers.description, beers.abv, beers.color, breweries.name AS brewery, categories.name AS category FROM beers JOIN breweries ON beers.brewery_id = breweries.brewery_id JOIN beer_has_category ON beer_has_category.beer_id = beers.beer_id JOIN categories ON categories.category_id = beer_has_category.category_id") 
           res.status(200).json({ beers : data.rows}) 
        } catch (error: any) {
            console.error(
                "Erreur lors de la récupération des bières",
                error
            )
            res.status(500).send(error.message)
        }
    },

    // Pour brewery_id, faire passer en params. Création de la bière depuis l'espace de la brasserie.
    post: async (req : Request, res : Response) => {
        try {
            const { name, price, description, color, abv, brewery_id } = req.body;
            const production_date = new Date().toJSON().slice(0, 10);
            const newBeer = await pool.query("INSERT INTO beers (name, price, description, color, abv, production_date, brewery_id) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *",
                [name, price, description, color, abv, production_date, brewery_id]
            )
            res.status(201).json({ beer: newBeer.rows[0] })
        } catch (error: any) {
            console.error(
                "Erreur lors de la création de la bière",
                error
            )
            res.status(500).send(error.message)

        }
    }
};