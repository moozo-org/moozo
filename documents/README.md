# MOOZO

Moozo est une plateforme d’organisation d’événements destinée à centraliser les besoins des organisateurs, des invités et des prestataires.

L’objectif est de remplacer les outils dispersés habituellement utilisés pendant l’organisation d’un événement — fichiers Excel, groupes WhatsApp, emails, PDF, liens Google Maps, dossiers photo — par une expérience unique, structurée et cohérente.

---

## Sommaire

- [Présentation](#présentation)
- [Acteurs concernés](#acteurs-concernés)
- [Fonctionnalités principales](#fonctionnalités-principales)
- [Démonstration](#démonstration)
- [Stack technique](#stack-technique)
- [Installation](#installation)
- [Lancement du projet](#lancement-du-projet)
- [Structure du projet](#structure-du-projet)
- [Tests](#tests)
- [Contribution](#contribution)
- [Recrutement](#recrutement)
- [Auteurs](#auteurs)

---

## Présentation

Moozo vise à simplifier l’organisation d’événements en centralisant les informations, les échanges et les outils nécessaires à leur préparation et à leur déroulement.

La plateforme s’adresse à trois types d’utilisateurs :

- les organisateurs, qui pilotent l’événement
- les invités, qui consultent les informations et interagissent avec l’événement
- les prestataires, qui proposent et suivent leurs services.

Moozo se positionne comme une infrastructure événementielle orientée autour de quatre objectifs :

- centraliser les données et les échanges
- automatiser les tâches répétitives
- réduire les frictions organisationnelles
- proposer une expérience utilisateur cohérente.

---

## Acteurs concernés

### Organisateurs

Les organisateurs disposent d’un espace leur permettant de créer, configurer et suivre leurs événements.

Ils peuvent notamment gérer les invités, suivre les réponses, organiser le plan de salle, échanger avec les prestataires et accéder aux statistiques de l’événement.

### Invités

Les invités accèdent aux informations utiles liées à l’événement depuis une interface simple.

Ils peuvent confirmer leur présence, consulter les informations pratiques, visualiser leur placement, échanger autour de l’événement et accéder aux contenus partagés.

### Prestataires

Les prestataires disposent d’un espace leur permettant de présenter leurs services, recevoir des demandes, suivre les prestations confirmées et échanger avec les organisateurs.

---

## Fonctionnalités principales

### Pour les organisateurs

- Création et gestion d’événements
- import et gestion des invités
- suivi des réponses RSVP
- plan de salle interactif
- aide au placement automatique des invités
- statistiques et suivi en temps réel
- catalogue de prestataires
- messagerie interne
- gestion des paiements
- galerie photo
- accès aux photos par reconnaissance ou association automatique, si cette fonctionnalité est validée dans le périmètre final.

### Pour les prestataires

- Création et gestion d’un profil prestataire
- réception des demandes de prestation
- réponse aux demandes des organisateurs
- messagerie avec les organisateurs
- suivi des prestations confirmées
- gestion des avis
- amélioration de la visibilité sur la plateforme.

### Pour les invités

- Réception d’une invitation
- confirmation de présence
- consultation des informations pratiques
- visualisation du plan de salle
- consultation de son placement
- accès au fil social interne de l’événement
- partage et consultation de photos
- accès facilité aux photos personnelles, si cette fonctionnalité est validée dans le périmètre final.

---

## Démonstration

Vidéo de présentation :

https://github.com/user-attachments/assets/50132549-012a-48e7-b7e9-f80c32d43626

---

## Stack technique

La stack technique prévue pour Moozo est la suivante :

### Frontend web

- React
- TypeScript.

Le frontend web est principalement destiné aux invités afin de leur permettre d’accéder aux informations de l’événement depuis un navigateur, sans installation d’application mobile.

### Frontend mobile

- React Native
- TypeScript.

L’application mobile est principalement destinée aux organisateurs et aux prestataires.

### Backend API

- Go
- OpenAPI
- Ogen.

Le backend principal expose les API nécessaires aux interfaces web et mobile.

### Service IA

- Python
- PyTorch, si confirmé par le périmètre IA final.

Le service IA est séparé du backend principal afin de permettre une évolution et un déploiement indépendants.

### Base de données

- MongoDB.

MongoDB est utilisé pour stocker les entités principales du projet : utilisateurs, événements, invités, tables, photos, prestataires et demandes associées.

### Déploiement et outillage

- Docker
- Docker Compose
- GitHub Actions
- Jira
- Figma.

---

## Installation

### Prérequis

Avant de lancer le projet, installer les outils suivants :

- Git
- Docker
- Docker Compose
- Go
- Node.js
- npm, pnpm ou yarn selon le gestionnaire retenu par le projet
- Python, si le service IA est utilisé.

Les versions exactes doivent être précisées dans ce README lorsque le projet les aura figées.

---

## Lancement du projet

### Cloner le dépôt

```bash
git clone <url-du-repository>
cd moozo
```

### Lancer l’environnement avec Docker

```bash
docker compose up --build
```

Cette commande démarre les services nécessaires au fonctionnement local du projet, selon la configuration présente dans `docker-compose.yml`.

### Lancer le frontend web

```bash
cd frontend
npm install
npm run dev
```

Adapter les commandes si le projet utilise `pnpm` ou `yarn`.

### Lancer le backend Go

```bash
cd backend
go mod download
go run ./...
```

### Lancer le service IA Python

```bash
cd ai-service
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python main.py
```

Sous Windows, l’activation de l’environnement virtuel peut différer :

```bash
.venv\Scripts\activate
```

---

## Structure du projet

Structure indicative :

```text
moozo/
├── .../
├── .../
├── .../
└── .../
```

Cette structure doit être adaptée si l’organisation réelle du dépôt diffère.

---

## Tests

### Backend Go

```bash
cd backend
go test ./...
go test ./... -cover
```

### Frontend web

```bash
cd frontend
npm run test
npm run build
```

### Service IA Python

```bash
cd ai-service
pytest
```

Les commandes exactes peuvent varier selon l’organisation finale du dépôt et les scripts définis dans chaque sous-projet.

---

## Qualité du code

Le projet applique les principes suivants :

- code lisible et maintenable
- fonctions courtes et à responsabilité unique
- conventions de nommage cohérentes
- tests obligatoires sur les fonctionnalités critiques
- revue de code avant fusion
- CI obligatoire sur les pull requests
- absence de secrets dans le dépôt
- documentation des décisions techniques importantes.

Les règles complètes sont disponibles dans le fichier [`CONTRIBUTING.md`](./CONTRIBUTING.md).

---

## Contribution

Toute contribution doit respecter le workflow suivant :

1. Créer ou sélectionner un ticket Jira.
2. Créer une branche depuis `develop`.
3. Développer la fonctionnalité ou le correctif.
4. Ajouter ou mettre à jour les tests nécessaires.
5. Vérifier le formatage, les tests et le build.
6. Ouvrir une pull request.
7. Obtenir au moins une review.
8. Merger uniquement après validation de la CI.

Consulter [`CONTRIBUTING.md`](./CONTRIBUTING.md) pour les règles détaillées.

---

## Recrutement

Les profils actuellement recherchés sont détaillés dans le document suivant :

[`RECRUTEMENT.md`](./recruitment/RECRUTEMENT.md)

---

## Statut du projet

Moozo est en phase de conception et de développement.

Certaines fonctionnalités listées dans ce README peuvent être prévues, en cours de développement ou soumises à validation fonctionnelle. Le périmètre final doit être confirmé dans la documentation produit et le backlog Jira.

---

## Auteurs

- [@emilieboutboul](https://www.github.com/emilieboutboul)
- [@gregoirevaillant](https://www.github.com/gregoirevaillant)
- [@PaulDecauchy](https://www.github.com/PaulDecauchy)
- [@polatrk](https://www.github.com/polatrk)
- [@MehdiB](https://www.github.com/MehdiB)
