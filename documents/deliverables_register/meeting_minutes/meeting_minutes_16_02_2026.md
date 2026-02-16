# Compte Rendu de Réunion
**Date :** 16 février 2026  
**Heure :** 10:00  
**Projet :** Moozo
**Participants :** Grégoire, Mehdi, Paul, Pierre-Alexis, Emilie  

---

## Objectif de la réunion

Clarifier les attentes concernant :
- Le **PBS (Product Breakdown Structure)**
- Le **WBS (Work Breakdown Structure)**
- Les **fonctionnalités détaillées**
- Les **spécifications techniques**

Et répartir les tâches pour avancer sur le document de spécifications.

---

## Points abordés

### 1. Clarification PBS / WBS

- Le **PBS** représente les grandes briques fonctionnelles du produit (vision macro).
- Le **WBS** détaille les fonctionnalités associées à chaque brique.
- ⚠️ Important :  
  Le PBS/WBS concerne **uniquement le produit**, pas :
  - L’architecture technique
  - Le déploiement
  - La gestion de projet  
  Ces éléments seront traités dans le Gantt ou Jira.

---

### 2. Structure actuelle du PBS

Les grandes catégories identifiées :

- 👤 Utilisateurs
- 📅 Événements
  - Gestion des invités (RSVP, emails)
  - Liste de tâches
  - Programmation
  - Plan de salle
- 💳 Paiements
- 💬 Messagerie
- 📸 Photos
- 🛠 Prestations
- 🔐 Administration

Ajout récent : **module d’administration** pour la modération des services et prestataires.

---

### 3. Fonctionnalités détaillées

Pour chaque élément du WBS, il faut :

- Décrire le **parcours utilisateur**
- Expliquer les **écrans visibles**
- Détailler les **actions possibles**

Objectif :  
Que ce soit compréhensible par une personne non technique.

Exemple – Inscription :
- Formulaire (nom, prénom, email, mot de passe)
- Soumission
- Réception email de vérification
- Validation du compte

---

### 4. Spécifications techniques

Pour chaque fonctionnalité :

- Décrire ce qu’il faut implémenter techniquement
- Routes API (front → back)
- Logique de traitement
- Validation des données
- Gestion des réponses

Une partie existe déjà dans les tickets Jira → à reprendre et structurer dans le document.

---

##  Décisions prises

- Valider la structure actuelle du PBS/WBS.
- Travailler d’abord sur la mise au propre des fonctionnalités détaillées.
- Réutiliser les tickets Jira pour accélérer la rédaction des specs techniques.
- Faire un premier exemple ensemble (inscription) pour aligner le format.

---

## Répartition des tâches

- Événements : Grégoire
- Photos : Pierre-Alexis
- Prestations : Paul
- Utilisateurs : Mehdi
- Messagerie : Pierre-Alexis
- Administration : Emilie

---

## Prochaines étapes

1. Finaliser le PBS/WBS sur draw IO
2. Compléter les fonctionnalités détaillées
4. Harmoniser les nouveaux épics Jira avec la nouvelle structure

---

**Fin de réunion**
