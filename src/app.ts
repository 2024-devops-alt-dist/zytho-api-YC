// importe le module Express et le Router
import express, { Application, Router } from "express"
import {router as beersRoutes} from "./routes/beers";

// const express = require('express');
const app:Application = express();

// pour recevoir des données en json
app.use(express.json());


app.use("/beers", beersRoutes);

app.get('/', (req, res) => {
    // envoie une réponse 'Hello World!' au client
    res.send("Bienvenue sur l'API Zythologue!");
  })

export default app;

