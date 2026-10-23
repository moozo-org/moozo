# Décision technique 03 — Typage partagé : génération des types depuis OpenAPI

**Date :** 23 octobre 2026
**Statut :** Acceptée
**Décideurs :** Paul, Grégoire

> **En bref :** les types front sont générés (code generation) à partir de la spécification OpenAPI/Swagger exposée par le back, plutôt que réécrits à la main dans chaque dépôt. Raison principale : définir les types une seule fois.

---

## Contexte

Moozo est réparti sur trois dépôts (`backend`, `frontend-web`, `frontend-mobile`). Chaque dépôt a besoin des mêmes types (réponses HTTP, entités), et il n'est pas possible de les centraliser dans un seul dépôt partagé.

Côté back, Paul écrit déjà les types des réponses HTTP et déclare l'API en OpenAPI, dans des fichiers YAML découpés par routes pour ne pas tout avoir dans un seul fichier.

## Décision

La spécification OpenAPI du back est la source des types. Les types du front sont générés à partir de cette spécification par un outil de code generation. Le back expose une page de dev permettant de consulter et de télécharger la spécification complète.

## Justification

- **Simplicité :** les types sont définis une seule fois, côté back ; le front les régénère au lieu de les recopier.
- **Cohérence avec l'architecture existante :** le back produit déjà des fichiers YAML OpenAPI structurés par routes, et Swagger affiche les routes puis tous les types.
- **Outillage existant :** des outils prennent la spécification (fichier ou URL) et génèrent les types ; Paul les a déjà utilisés en équipe pour du JavaScript/TypeScript.

## Alternatives considérées

| Option | Avantages | Inconvénients |
| ------ | --------- | ------------- |
| **Types écrits à la main dans chaque dépôt** | Aucun outil à mettre en place | Types dupliqués sur trois dépôts, à maintenir en parallèle |
| **Génération depuis OpenAPI** (retenu) | Types définis une fois ; spécification déjà produite par le back | Outil de génération à choisir et à brancher ; support des langages cibles à vérifier |

## Conséquences

- Paul structure et maintient les fichiers YAML OpenAPI par routes et expose la spécification en environnement de dev.
- Paul partage le nom de la bibliothèque / technique de code generation qu'il a utilisée auparavant ; l'outil retenu est **À confirmer**.
- Support de la cible mobile **À confirmer** : Paul a confirmé JS/TypeScript, pas les autres langages. Le mobile étant en Flutter (décision 01), il faut vérifier qu'un générateur Dart existe.
- Point de vigilance : la spécification devient un contrat ; une modification côté back doit être répercutée en régénérant les types côté front.
