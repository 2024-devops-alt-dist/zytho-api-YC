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