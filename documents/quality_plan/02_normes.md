# Normes

Les normes de développement ont pour objectif de garantir :

- La lisibilité du code
- La maintenabilité du projet
- La cohérence entre les contributions
- La réduction des erreurs
- La simplification des revues de code
- La qualité des livrables

Ces normes portent principalement sur le contrôle de version, la structure des branches, les conventions de validation et les normes de codage pour chaque langage de programmation utilisé dans le projet.

## Git

Le projet utilise Git pour la gestion de version. Le dépôt est hébergé sur GitHub afin de faciliter la collaboration, la gestion des pull requests, les revues de code et l’intégration continue.

Aucun développement ne doit être réalisé directement sur la branche principale.

### Branch

Les branches utilisées sont les suivantes :

- **main** : version stable du projet
- **develop** : branche principale de développement
- **feature/nom-feature** : développement d’une nouvelle fonctionnalité
- **fix/nom-fix** : correction d’un bug
- **docs/nom-documentation** : modification documentaire
- **refactor/nom-refactor** : refactorisation sans changement fonctionnel

Toute fusion vers **develop** doit passer par une pull request validée par au moins un autre membre de l’équipe.

### Commit

Les messages de commit suivent une convention inspirée de Conventional Commits :

- feat : ajout d’une fonctionnalité ;
- fix : correction d’un bug ;
- refactor : modification interne sans changement fonctionnel ;
- docs : modification de la documentation ;
- test : ajout ou modification de tests ;
- chore : tâche technique sans impact fonctionnel direct.

Exemples :

- feat : ajout de la gestion du plan de table
- fix : correction du calcul de position des invités
- docs : mise à jour du guide de contribution
- chore : Suppression de commentaires

## Code

Les règles communes suivantes s’appliquent à l’ensemble du projet :

- Utiliser des noms explicites pour les variables, fonctions, composants et fichiers
- Limiter la longueur des fonctions
- Appliquer le principe de responsabilité unique
- Éviter la duplication de code
- Gérer explicitement les erreurs
- Écrire des commentaires uniquement lorsque le code n’est pas immédiatement compréhensible
- Privilégier la lisibilité à la complexité inutile
- Maintenir des fichiers courts et cohérents

Le formatage automatique est obligatoire lorsque l’écosystème du langage le permet.

### GO

Les règles Go suivantes sont appliquées :

- Formatage obligatoire avec gofmt
- Noms de packages courts, en minuscules, sans underscore
- camelCase pour les variables, fonctions et méthodes non exportées
- PascalCase pour les structures, interfaces, fonctions et méthodes exportées
- Acronymes usuels conservés en majuscules dans les noms : ID, URL, HTTP, API, JSON, SQL
- Imports placés en haut du fichier (bibliothèques standard, bibliothèques externes, modules du projet)
- Séparation des imports entre bibliothèque standard, dépendances externes et modules internes
- Utilisation de structs et interfaces plutôt que de classes
- Préférence pour la composition plutôt que l’héritage
- Commentaires GoDoc obligatoires pour les éléments exportés
- Gestion systématique des erreurs
- Ajout de contexte aux erreurs avec fmt.Errorf("...: %w", err) lorsque pertinent
- Utilisation de context.Context en premier argument pour les opérations longues, réseau ou annulables
- Un package doit avoir une responsabilité claire
- Éviter les packages génériques de type utils
- Tests placés dans des fichiers `_test.go` avec le package testing
- Gestion des dépendances avec go mod

### Python

Les règles Python suivantes sont appliquées :

- snake_case pour les variables, fonctions et méthodes
- PascalCase pour les classes et exceptions
- UPPER_CASE pour les constantes
- `_leading_underscore` pour les éléments à usage interne
- Méthodes spéciales Python écrites avec la convention dunder, par exemple `__init__` ou `__str__`
- Acronymes usuels conservés en majuscules dans les noms : ID, URL, HTTP, API, SQL, DB
- Imports placés en haut du fichier
- Séparation des imports entre bibliothèque standard, dépendances externes et modules internes
- Docstrings obligatoires pour les classes et fonctions publiques
- Fonctions courtes et à responsabilité unique
- Gestion des erreurs avec des blocs try/except ciblant des exceptions précises
- Utilisation de pytest pour les tests
- Indentation 4 espaces

### React

Les règles React et TypeScript suivantes sont appliquées :

- Utilisation de TypeScript pour typer les props, états, retours d’API et modèles métier
- Composants courts et réutilisables
- Séparation claire entre composants UI, logique métier, hooks, services API et types
- Organisation moléculaire des composants (Atomes, Molécules, Organismes, Templates, Pages)
- Nommage explicite des composants en PascalCase
- Nommage des hooks avec le préfixe use
- Formatage automatique avec Prettier
- Tests de composants
- Éviter la logique métier complexe directement dans les composants d’interface.
