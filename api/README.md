# API Zythologue

## Description

Cette API Zythologue est une API REST construite afin de pouvoir gérer et explorer des collections de bières et leurs brasseries. Elle permet aux utilisateurs de s'inscrire et se connecter et de voir les informations de leurs bières préférées. 

## Features

#### Utilisateur

- Inscription de l'utilisateur avec hashage de mot de passe ✔️
- Connexion de l'utilisateur avec validations par middleware ✔️
- Afficher la liste des bières ajoutées en favoris par l'utilisateur ✔️
- TODO : mettre en place une sécurisation avec JWT ❌
- TODO : Gestion des rôles admin et manager ❌

#### Bières

- Afficher une liste des bières ✔️
- Afficher les informations d'une bière précise ✔️
- Ajouter une nouvelle bière à la base de données ✔️
- Supprimer et modifier une bière précise ✔️
- TODO : Limiter l'accès à certaines routes aux rôles d'utilisateurs correspondant ❌

#### Brasseries

- Afficher toutes les brasseries ✔️
- Afficher les informations d'une brasserie précise ✔️
- Ajouter une nouvelle brasserie à la base de données ✔️
- Supprimer et modifier une brasserie précise ✔️
- TODO : Limiter l'accès à certaines routes aux rôles d'utilisateurs correspondant ❌
- TODO : Afficher uniquement les bières d'une certaine brasserie ❌

#### Favorites:

- Ajouter une bière à ses favoris en temps qu'utilisateur connecté ✔️
- Supprimer une bière de ses favoris en temps qu'utilisateur connecté ✔️

## Technologies utilisées

- Backend: Node.js et Express.js
- Base de Donnée: PostgreSQL
- Authentification: bcrypt pour hasher les mots de passe
- Variables d'environnements : Dotenv
- Documentation: Swagger pour la documentation API 
- TypeScript: Gestion des Types

## Installation 

### Pré-requis
- Node.js et NPM installés
- Docker

### Etapes

1. Cloner le repo Github 💾

```bash
 git clone https://github.com/2024-devops-alt-dist/zytho-api-YC.git
 cd zytho-api-YC
 ```

 2. Lancer le Docker de l'API avec Docker Compose 🐳

 ```
 docker-compose up --build -d
 ```

 3. Débrouille toi 🔥

 Rends-toi sur l'URL http://localhost:3000

 ## API Endpoints - Swagger

Une fois le projet lancé en local, rends-toi sur http://localhost:3000/api-docs/#/ pour voir tous les endpoints de l'API