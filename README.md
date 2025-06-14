# Vue Voyage

Projet réalisé dans le cadre du cours **Techniques avancées en programmation Web** au **Collège de Maisonneuve**.

## Objectif

Développement d’une application monopage (SPA) pour une agence de voyages spécialisée dans les forfaits touristiques. Le projet permet d’ajouter, de modifier, de supprimer et d’afficher des forfaits à l’aide d’une interface Vue.js connectée à une API Node.js/Express et une base de données MySQL.

## Fonctionnalités principales

- Formulaire d’ajout d’un nouveau forfait
- Liste dynamique des forfaits
- Modification et suppression d’un forfait existant
- Application sans rechargement (requêtes HTTP entre Vue.js et Express)
- Navigation 
  - Accueil
  - Forfaits
  - À propos de l’agence

## Stack technique

- **Frontend** : Vue.js, Tailwind CSS
- **Backend** : Node.js, Express, MySQL

## Structure du projet

travel-vue/
├── travel-frontend/  ← Interface cliente Vue.js avec Vue Router et Tailwind CSS
├── server/           ← API backend Express + base de données MySQL

### 1. Lancer le frontend (Vue.js)
```bash
npm run dev

## 📅 Date de remise

23 juin 2025

---
Projet encadré par **Marcos Sanches** – *Professeur au Collège de Maisonneuve*
