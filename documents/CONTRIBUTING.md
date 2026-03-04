# MOOZO CONTRIBUTING

## 1. Workflow Git

### 1.1 Création d’une branche

Depuis `develop` :

```bash
git checkout develop
git pull origin develop
git checkout -b feature/nom_feature
```

Jamais de commit direct sur `main` ou `develop`.

---

### 1.2 Développement

Règles obligatoires :

* Code formaté (eslint, prettier)
* Tests unitaires écrits
* Pas de code mort
* Pas de console.log oubliés pour le front et utilisation des loggers pour le backend

---

### 1.3 Commit

Format :

```
feat: ajout endpoint création utilisateur
fix: correction validation email
refactor: simplification service auth
```

Un commit = une intention claire.

---

### 1.4 Pull Request

Conditions pour ouvrir une PR :

* Code fonctionnel
* Tests écrits et passants
* Aucun conflit
* Titre et description claire

Minimum :

* 1 review obligatoire
* Validation CI

---

## 2. Gestion Jira

Cycle :

1. Ticket en **To Do**
2. Passage en **In Progress**
3. Création branche liée
4. Développement
5. PR
6. Merge
7. Ticket automatiquement fermé

Chaque PR doit référencer son ticket.

---

## 3. Standards de tests

### Backend Go

* 

### Python IA

*

### Frontend

*
*
*

---

## 4. Bonnes pratiques

* Bien build avant de faire un PR
* Ne pas merger son propre code sans review
* Prioriser lisibilité > optimisation prématurée
* Documenter toute décision d’architecture importante

---

## 5. Règles de décision technique

En cas de désaccord :

* Discussion argumentée
* Basée sur performance, maintenabilité, sécurité
* Décision finale prise par les responsables désignés

---

## 6. Refus de PR si :

* Pas de tests
* Mauvais nommage
* Code non lisible
* Logique métier mal structurée
* Conventions non suivies

---

## 7. Philosophie

Le code doit être :

* Simple
* Prévisible
* Testable
* Évolutif

La priorité est la qualité long terme, pas la rapidité court terme.
