# Compte Rendu de Réunion

**Date :** 23 février 2026  
**Heure :** 14:00  
**Participants :** Grégoire, Mehdi, Paul, Pierre-Alexis, Emilie

---

## Objectif de la réunion

* Faire un point d’avancement sur :

  * Les **spécifications fonctionnelles**
  * Les **spécifications techniques**
  * La mise à jour des **tickets Jira**
* Clarifier l’organisation des tickets par rapport au cahier des charges
* Aborder la partie **infrastructure et ressources**
* Planifier les prochaines étapes

---

## Points abordés

### 1. Organisation des tickets Jira

Décision importante :

* Les **détails techniques (routes, validations, logique, tests)** doivent être centralisés dans le **cahier des charges**.
* Les **tickets Jira** doivent :

  * Être plus synthétiques
  * Pointer vers la section correspondante du document
  * Représenter une fonctionnalité claire (ex : création de conversation, visualisation des conversations, paiement organisateur, etc.)

Il faut vérifier :

* Qu’il existe **un ticket par fonctionnalité**
* Que chaque ticket est correctement rattaché à son épic
* Que les tickets correspondent bien à la structure actuelle du document

---

### 2. Infrastructure & Tableau des ressources

Discussion autour de la partie **coûts / ressources** dans le document :

À définir :

* Hébergement base de données (ex : MongoDB managé vs serveur dédié)
* Serveur applicatif
* Dimensionnement machine
* Scalabilité

Point important soulevé :
  -> Le dimensionnement dépend du **nombre d’utilisateurs visé au lancement**

Décision :

* Proposer **plusieurs scénarios** :

  * Scénario bas
  * Scénario réaliste
  * Scénario ambitieux
* Expliquer comment l’infrastructure évoluerait selon la croissance

Mehdi se charge de travailler sur cette partie.

---

### 3. Normes et standards

Question soulevée :

* Les normes doivent-elles être communes ou par langage ?

Conclusion :

* Les normes seront **définies par langage** (ex : Python ≠ JavaScript ≠ React)

Cette partie sera nettoyée après finalisation des tickets.

---

### 4. Quality Plan

Action demandée :

Dans le document **Quality Plan**, chacun doit ajouter :

* Pourquoi il occupe son rôle
* Ses expériences passées pertinentes
* Ce qu’il souhaite développer comme compétences

Cela permettra de justifier la répartition des responsabilités.

---

### 5. PBS / WBS

Grégoire refera le schéma **PBS/WBS** une fois que :

* Les titres des sections de chaque partie seront définitifs
* Plus aucun ajout majeur de fonctionnalités n’est prévu

Demande :
  -> Informer Grégoire dès que vos titres sont stabilisés.

---

### 6. Organisation & Gouvernance

Suite aux remarques sur la clarté hiérarchique :

* Organisation principalement **horizontale**
* En cas de blocage ou décision 50/50 :
  -> Décision finale prise par **Emilie et Grégoire**

---

## Décisions prises

* Centraliser toute la technique dans le cahier des charges.
* Garder des tickets Jira synthétiques reliés au document.
* Préparer plusieurs scénarios d’infrastructure.
* Définir les normes par langage.
* Définition précise des rôles.
* Finaliser les tickets avant de figer définitivement le PBS/WBS.

---

## Répartition des actions

* **Tous :**

  * Finaliser fonctionnalités détaillées.
  * Compléter spécifications techniques.
  * Mettre Jira au propre (épic, stories, correspondance document).
  * Relire le travail des autres pour avoir une vision global et noter si vous voulez revoir des points mardi prochain.
  * Faire chacun la définition précise des rôles voir [voir partie 4](#4-quality-plan) du document.

* **Mehdi :**

  * Travailler sur le tableau des ressources / infrastructure

* **Grégoire :**

  * Refaire le schéma PBS/WBS une fois les titres validés
  * Envoyer les minutes de réunion

---

## Prochaines étapes

* Continuer le travail cette semaine
* Relecture collective prévue **mardi prochain**
* Rendez-vous officiel fixé **mercredi 14h30**

  * Objectif : document propre, structuré et cohérent

---

**Fin de réunion**
