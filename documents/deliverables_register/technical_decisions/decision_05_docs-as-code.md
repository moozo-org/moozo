# Décision technique 05 — Documentation : fichiers Markdown dans le dépôt, source unique de vérité

**Date :** 6 novembre 2026
**Statut :** Acceptée
**Décideurs :** Équipe Moozo

> **En bref :** les documents de travail (Word, Excel, diagrammes) sont convertis en fichiers Markdown dans le dépôt GitHub, qui devient la source unique de vérité avec versioning. OneDrive n'est plus utilisé pour les documents vivants.

---

## Contexte

Le Plan Qualité v1.0 (`04_outils.md`) retient **OneDrive** pour le stockage et le partage des documents administratifs, cahiers des charges, rapports et fichiers bureautiques au format Word ou similaire. Les documents de follow-up restent jusqu'ici au format Word dans le dossier partagé (réunion du 23 octobre).

Les documents sont donc répartis entre OneDrive (Word, Excel), Google Drive (graphiques draw.io) et le dépôt (code, Plan Qualité en Markdown). Un fichier a déjà été perdu et il a fallu demander où le retrouver (réunion du 6 novembre).

## Décision

La documentation et les tableurs de suivi sont écrits en **Markdown dans le dépôt GitHub**, versionnés avec le code. Les mises à jour passent par une pull request vers `main`. Les diagrammes sont écrits en **Mermaid**, et les PDF (ainsi que le WBS et d'autres artefacts) sont **générés automatiquement** depuis les fichiers Markdown. OneDrive n'est plus utilisé pour les documents vivants.

## Justification

- **Source unique de vérité :** un seul endroit pour retrouver un document, au lieu de plusieurs copies réparties entre OneDrive, Google Drive et Teams.
- **Versioning :** chaque modification est tracée (auteur, date, historique) et peut être annulée, ce que Word et Excel sur OneDrive ne donnent pas aussi lisiblement.
- **Cohérence avec le workflow existant :** les documents suivent le même circuit que le code (branche, PR, review, merge sur `main`).
- **Simplicité :** le Markdown est un format texte, lisible partout, sans licence ni logiciel dédié.
- **Livrables dérivés :** les PDF, le WBS et les diagrammes sont générés par script à partir du Markdown, sans ressaisie ni export manuel.
- **Un seul outil à maintenir :** moins de systèmes à gérer et à faire accéder à chaque membre de l'équipe.

## Alternatives considérées

| Option                                        | Avantages                                                   | Inconvénients                                                                                            |
| --------------------------------------------- | ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **Rester sur OneDrive (Word, Excel)**         | Déjà en place ; format familier                             | Documents dispersés ; historique peu lisible ; copies multiples ; fichier perdu                          |
| **Documents Markdown dans le dépôt** (retenu) | Source unique ; versioning ; relecture par PR ; PDF générés | Migration des documents existants ; scripts de génération à maintenir ; Excel moins confortable en texte |
| **Wiki ou espace dédié (ex. ClickUp Docs)**   | Édition simple en ligne                                     | Séparé du code ; pas de PR ni de versioning équivalents ; outil supplémentaire                           |

## Conséquences

- Migration des Word et Excel vers des fichiers `.md` dans le dépôt (en cours, faite en grande partie le 6 novembre).
- Les scripts de génération de PDF et de WBS doivent être poussés dans le dépôt (action de Grégoire, non encore faite).
- Documents à mettre à jour : Plan Qualité v1.0 (`04_outils.md`, `06_onboarding.md`, sommaire du `README.md` du plan qualité) et `links.md`.
- Les PDF du dossier `pdf/` restent des photos figées des fichiers Markdown à une date donnée.
- Point de vigilance : les documents remis à Lucas et Antoine (follow-up, PLD) doivent être exportés en PDF depuis le Markdown. Format exact à confirmer.
- Le dossier OneDrive existant est conservé comme archive ; sort final (lecture seule ou suppression) à confirmer.
