# MOOZO — CONTRIBUTING

Ce document définit les règles de contribution au projet Moozo. Il doit être respecté par tous les membres de l’équipe afin de garantir un code lisible, maintenable, testé et cohérent.

---

## 1. Workflow Git

### 1.1 Branches principales

Le projet utilise les branches principales suivantes :

* `main` : contient uniquement une version stable du projet
* `develop` : branche principale de développement
* `feature/nom-feature` : développement d’une nouvelle fonctionnalité
* `fix/nom-fix` : correction d’un bug
* `refactor/nom-refactor` : refactorisation sans changement fonctionnel
* `docs/nom-doc` : modification de documentation
* `test/nom-test` : ajout ou modification de tests

Aucun commit direct n’est autorisé sur `main` ou `develop`.

---

### 1.2 Création d’une branche

Avant de commencer une tâche, se placer sur `develop`, récupérer la dernière version du projet, puis créer une branche dédiée.

```bash
git checkout develop
git pull origin develop
git checkout -b feature/nom-feature
```

Le nom de branche doit être court, explicite et lié au ticket Jira lorsque possible.

Exemples :

```bash
feature/MOOZO-42-create-event
fix/MOOZO-58-email-validation
refactor/MOOZO-61-auth-service
```

---

### 1.3 Développement

Pendant le développement, les règles suivantes sont obligatoires :

* respecter les standards de code du projet
* formater le code avant de créer une pull request
* écrire ou mettre à jour les tests nécessaires
* supprimer le code mort
* ne pas laisser de `console.log` inutile côté frontend
* utiliser les loggers prévus côté backend
* ne pas commiter de secrets, tokens, clés API ou fichiers `.env`
* vérifier que le projet build correctement
* vérifier que les tests passent en local

---

## 2. Conventions de commits

Les commits suivent une convention inspirée de Conventional Commits.

Format général :

```text
type: description courte
```

Types autorisés :

* `feat:` ajout d’une fonctionnalité
* `fix:` correction d’un bug
* `refactor:` modification interne sans changement fonctionnel
* `docs:` modification de documentation
* `test:` ajout ou modification de tests
* `chore:` tâche technique sans impact fonctionnel direct
* `ci:` modification de la configuration CI/CD
* `build:` modification du système de build ou des dépendances.

Exemples :

```text
feat: ajout endpoint création utilisateur
fix: correction validation email
refactor: simplification service auth
docs: mise à jour du guide de contribution
test: ajout tests repository event
```

Un commit doit correspondre à une intention claire. Éviter les commits trop vagues comme :

```text
update
fix bug
wip
changes
```

---

## 3. Pull Request

### 3.1 Conditions avant ouverture

Avant d’ouvrir une pull request, vérifier que :

* le code est fonctionnel
* le code est formaté
* les tests nécessaires ont été ajoutés ou mis à jour
* les tests passent en local
* le projet build correctement
* aucun conflit Git n’est présent
* aucun secret ou fichier sensible n’a été ajouté
* le ticket Jira est référencé
* le titre et la description de la PR sont clairs

---

### 3.2 Format recommandé pour une PR

Le titre doit résumer précisément le changement.

Exemple :

```text
feat: ajout de la création d’événement
```

La description doit contenir :

```markdown
## Objectif
Décrire brièvement le but de la PR.

## Changements réalisés
- Changement 1
- Changement 2
- Changement 3

## Tests effectués
- [ ] Tests unitaires
- [ ] Tests d’intégration
- [ ] Tests manuels

## Ticket Jira
MOOZO-XX

## Points d’attention
Indiquer les limites, risques ou éléments à vérifier pendant la review.
```

---

### 3.3 Validation d’une PR

Une PR ne peut être mergée que si :

* au moins une review a été approuvée
* la CI est valide
* les tests passent
* les conflits sont résolus
* les conventions de code sont respectées
* le ticket Jira est lié
* les commentaires bloquants de review sont traités.

Un développeur ne doit pas merger son propre code sans review externe.

---

## 4. Gestion Jira

Jira est utilisé pour suivre les tâches, bugs, user stories et décisions liées au projet.

Workflow standard :

```text
To Do → In Progress → Review → Done
```

Processus attendu :

1. Le ticket est créé dans Jira.
2. Le ticket est placé en `To Do`.
3. Lorsqu’un développeur commence le travail, il passe le ticket en `In Progress`.
4. Une branche liée au ticket est créée.
5. Le développement est réalisé.
6. Une pull request est ouverte.
7. Le ticket passe en `Review`.
8. La PR est validée puis mergée.
9. Le ticket passe en `Done`, automatiquement si l’intégration Jira/GitHub est configurée.

Chaque PR doit référencer son ticket Jira.

Exemple :

```text
MOOZO-42
```

ou dans la description :

```text
Closes MOOZO-42
```

---

## 5. Standards de code

### 5.1 Règles générales

Le code doit être :

* lisible
* simple
* prévisible
* testable
* maintenable
* cohérent avec le reste du projet.

Les règles générales sont les suivantes :

* privilégier la lisibilité à l’optimisation prématurée
* écrire des fonctions courtes et à responsabilité unique
* éviter la duplication de code
* nommer clairement les variables, fonctions, types et fichiers
* éviter les abstractions inutiles
* isoler la logique métier des couches techniques
* documenter les décisions d’architecture importantes
* gérer explicitement les erreurs
* ne pas masquer une erreur sans justification.

---

### 5.2 Backend Go

Règles obligatoires :

* formater le code avec `gofmt`
* organiser les imports proprement
* utiliser `camelCase` pour les éléments non exportés
* utiliser `PascalCase` pour les éléments exportés
* conserver les acronymes standards en majuscules : `ID`, `URL`, `HTTP`, `API`, `JSON`, `SQL`
* ajouter des commentaires GoDoc pour les éléments exportés
* toujours gérer les erreurs avec `if err != nil`
* ajouter du contexte aux erreurs lorsque nécessaire avec `fmt.Errorf("...: %w", err)`
* utiliser `context.Context` en premier argument pour les opérations longues, réseau ou annulables
* éviter les packages génériques de type `utils`
* maintenir des packages avec une responsabilité claire
* écrire les tests dans des fichiers `_test.go`.

Commandes utiles :

```bash
gofmt -w .
go test ./...
go test ./... -cover
```

---

### 5.3 Backend IA Python

Règles obligatoires :

* utiliser `snake_case` pour les variables, fonctions et méthodes
* utiliser `PascalCase` pour les classes et exceptions
* utiliser `UPPER_CASE` pour les constantes
* écrire des fonctions courtes et testables
* ajouter des docstrings aux fonctions et classes publiques
* gérer les erreurs avec des exceptions précises
* éviter les `except Exception` non justifiés
* éviter les notebooks comme code de production
* isoler la logique expérimentale du code utilisé en production
* écrire des tests avec `pytest`.

Commandes utiles :

```bash
pytest
pytest --cov
```

Remarque : l’indentation Python doit être standardisée sur l’ensemble du projet. L’usage recommandé est de quatre espaces.

---

### 5.4 Frontend React / TypeScript

Règles obligatoires :

* utiliser TypeScript pour les props, modèles, hooks et retours d’API
* nommer les composants en `PascalCase`
* nommer les hooks avec le préfixe `use`
* séparer les composants UI, hooks, services API, types et logique métier
* éviter la logique métier complexe directement dans les composants
* supprimer les `console.log` avant ouverture de PR
* utiliser Prettier et ESLint
* écrire les tests avec Jest et React Testing Library lorsque pertinent.

Commandes utiles :

```bash
npm run lint
npm run format
npm run test
npm run build
```

Adapter les commandes si le projet utilise `pnpm`, `yarn` ou un autre gestionnaire de paquets.

---

## 6. Standards de tests

### 6.1 Règles générales

Toute fonctionnalité doit être accompagnée de tests adaptés à son niveau de criticité.

Les tests doivent couvrir :

* le comportement nominal
* les cas d’erreur
* les cas limites
* les règles métier
* les validations d’entrée
* les interactions avec les dépendances critiques.

Une PR peut être refusée si elle ajoute une fonctionnalité ou modifie une logique existante sans test pertinent.

---

### 6.2 Backend Go

Les tests Go doivent couvrir en priorité :

* la logique métier
* les services
* les repositories
* les validations
* les erreurs attendues
* les handlers critiques lorsque pertinent.

Les tests doivent être placés dans des fichiers `_test.go`.

Commande :

```bash
go test ./...
```

---

### 6.3 Backend IA Python

Les tests Python doivent couvrir :

* les fonctions de prétraitement
* les algorithmes de matching
* les cas limites
* les erreurs attendues
* la stabilité des sorties lorsque les entrées sont contrôlées.

Commande :

```bash
pytest
```

---

### 6.4 Frontend React

Les tests frontend doivent couvrir :

* le rendu des composants
* les interactions utilisateur
* les états de chargement
* les états d’erreur
* les hooks critiques
* les appels API mockés lorsque nécessaire.

Commandes :

```bash
npm run test
npm run build
```

---

### 6.5 Tests d’intégration et end-to-end

Les tests d’intégration permettent de vérifier la communication entre les modules, notamment les endpoints API, la base de données et les middlewares.

Les tests end-to-end servent à valider des parcours utilisateur complets, comme :

* création d’un événement
* gestion des invités
* consultation du plan de table
* partage ou consultation de photos
* parcours organisateur
* parcours invité.

Aucune fonctionnalité critique ne doit être considérée comme terminée si son parcours principal n’a pas été testé au minimum manuellement, et automatisé lorsque cela est pertinent.

---

## 7. Qualité et sécurité

### 7.1 Règles qualité

Avant d’ouvrir une PR, vérifier que :

* le projet build correctement
* les tests passent
* le code est formaté
* la CI ne signale pas d’erreur
* les logs inutiles sont supprimés
* la documentation est mise à jour si nécessaire
* les changements sont cohérents avec l’architecture existante.

---

### 7.2 Règles de sécurité

Il est interdit de commiter :

* des mots de passe
* des clés API
* des tokens
* des fichiers `.env` contenant des valeurs sensibles
* des dumps de base de données
* des informations personnelles non nécessaires.

Les secrets doivent être stockés dans un gestionnaire adapté ou dans les variables d’environnement prévues par la CI/CD.

Toute entrée utilisateur doit être validée côté backend.

Toute erreur retournée à un utilisateur doit être contrôlée afin d’éviter d’exposer des informations internes.

---

## 8. Règles de décision technique

En cas de désaccord technique, la décision doit être prise selon des critères objectifs :

* maintenabilité
* lisibilité
* performance
* sécurité
* simplicité
* cohérence avec l’architecture existante
* coût de mise en œuvre
* impact sur les délais.

Le processus est le suivant :

1. Les options sont présentées clairement.
2. Les avantages et limites sont discutés.
3. Une décision est prise collectivement lorsque possible.
4. En cas de blocage, la décision finale revient au responsable désigné du périmètre ou au décisionnaire final du projet.
5. Toute décision structurante doit être documentée.

---

## 9. Refus de pull request

Une pull request peut être refusée si :

* les tests sont absents ou insuffisants
* la CI échoue
* le code ne build pas
* le nommage est imprécis ou incohérent
* le code est difficile à lire
* la logique métier est mal structurée
* les conventions ne sont pas respectées
* des logs de debug sont présents
* des secrets ou informations sensibles sont exposés
* la PR est trop large et mélange plusieurs sujets
* la documentation nécessaire n’est pas mise à jour
* le ticket Jira n’est pas référencé.

---

## 10. Checklist avant PR

Avant d’ouvrir une pull request, vérifier :

```markdown
- [ ] Ma branche est à jour avec develop
- [ ] Le code est formaté
- [ ] Le projet build correctement
- [ ] Les tests passent en local
- [ ] J’ai ajouté ou mis à jour les tests nécessaires
- [ ] Aucun secret n’est présent dans le code
- [ ] Aucun console.log inutile n’est présent côté frontend
- [ ] Les logs backend utilisent le logger prévu
- [ ] La documentation est mise à jour si nécessaire
- [ ] Le ticket Jira est référencé
- [ ] La PR a un titre et une description clairs
```

---

## 11. Philosophie du projet

Le code Moozo doit rester :

* simple
* lisible
* prévisible
* testable
* évolutif
* maintenable.

La priorité est la qualité à long terme. La rapidité de livraison ne doit pas se faire au détriment de la stabilité, de la sécurité ou de la maintenabilité du projet.
