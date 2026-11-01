# Documentation d'onboarding

L'objectif est qu'un nouveau membre soit opérationnel en quelques jours : savoir où trouver l'information, installer le projet, comprendre le workflow et savoir à qui s'adresser.

## Readme

Le fichier **Readme** présente l’objectif de l’application, son positionnement ainsi que les fonctionnalités principales du projet Moozo. Il décrit ce que l’on construit et comment le produit répond aux besoins des organisateurs, des invités et des prestataires. On y retrouve aussi les informations de démonstration, les recrutements en cours ainsi que les auteurs du projet.

Il contient également l'installation et le lancement du projet (prérequis, Docker et Docker Compose, frontend web, backend Go, service IA Python), la structure du dépôt et la façon de lancer les tests.

## Contributing

Le fichier **Contributing** explique les règles pour participer au développement du projet. Il détaille le workflow Git à respecter, les standards de code, le format des commits, le processus de pull request ainsi que les bonnes pratiques de qualité logicielle afin de garantir un développement cohérent et maintenable.

## Parcours d'arrivée

1. **Obtenir les accès** : organisation GitHub, ClickUp, Slack, Figma et OneDrive. Les liens sont dans `documents/links.md`.
2. **Lire dans cet ordre** :
   1. le Readme ;
   2. le Contributing ;
   3. le plan qualité : normes, outils et tests ;
   4. le cahier des charges, sur le domaine concerné ;
   5. les décisions techniques du registre des livrables, pour comprendre pourquoi les choix ont été faits.
3. **Installer le projet** en suivant la partie Installation du Readme.
4. **Comprendre le workflow** : un ticket ClickUp, une branche créée depuis `develop`, une pull request, au moins une review, puis le merge une fois la CI validée.
5. **Prendre un premier ticket** de petite taille, avec un référent du périmètre concerné.
6. **Assister au follow-up de la semaine** pour voir l'avancement des sprints et le planning.

## Qui contacter

La cartographie des compétences et la matrice RACI du chapitre [Organisation](01_organisation.md) indiquent qui est référent sur chaque périmètre technique (frontend, backend, base de données, infrastructure, sécurité, IA, tests, gestion de projet). C'est la première personne à solliciter sur ce périmètre.

## Suivi du projet

- **ClickUp** : backlog, sprints, tickets et assignations. Les sprints y sont planifiés et suivis.
- **Planning et PLD** : le planning (Gantt ClickUp) et le PLD sont mis à jour à chaque follow-up.
- **Comptes rendus** : chaque réunion donne lieu à un compte rendu rangé dans le registre des livrables.

## Où trouver et ranger les documents

| Besoin | Dossier |
|---|---|
| Cahier des charges (fonctionnel et technique) | `documents/specifications/` |
| Plan qualité | `documents/quality_plan/` |
| Diagrammes (OBS, PBS, WBS, architecture) | `documents/diagrams/` |
| Comptes rendus, décisions techniques, revues de code, rapports de tests, registre des risques | `documents/deliverables_register/` |
| Présentation et supports | `presentation/` |

Chaque document est rangé au fur et à mesure qu'il est produit, pas à la fin.

## Faciliter l'arrivée d'un nouveau membre

- Désigner un référent par périmètre pour l'accompagner, en s'appuyant sur la cartographie des compétences.
- Travailler en binôme sur les premiers tickets (peer programming).
- Partager les accès dès le premier jour.
- Documenter les décisions importantes pour qu'il n'ait pas à les redemander.
- Mettre à jour le Readme et ce parcours dès qu'une étape change ou prête à confusion.
