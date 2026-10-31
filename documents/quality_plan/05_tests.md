# Tests

La stratégie de tests vise à garantir :

- La fiabilité des fonctionnalités
- La non-régression
- La cohérence entre les modules
- La validation des règles métier
- La qualité des API
- La robustesse des parcours utilisateur principaux

La stratégie s'organise en trois niveaux (pyramide de tests) : beaucoup de tests unitaires, moins de tests d'intégration, et encore moins de tests end-to-end.

## Tests Unitaires (TU)

Objectif : valider la logique isolée d'un module. Les dépendances externes (API, base de données) sont simulées.

### Backend — API métier (Go)

- Outil : package natif testing.
- Règle : chaque fichier des dossiers repositories et domain doit être accompagné de son fichier de test (`*_test.go`).
- Priorité : repositories MongoDB et logique métier (règles de gestion).

### Microservice IA (Python)

Service indépendant du backend Go, testé de façon autonome.

- Outil : pytest.
- Périmètre : validation des algorithmes de matching de reconnaissance faciale.

### Frontend (React)

- Outils : Jest + React Testing Library.
- Périmètre : logique des composants, rendu et interactions utilisateur.
- Mock des appels API : utilisation de [MSW (Mock Service Worker)](https://mswjs.io/) pour simuler les réponses du backend, plutôt que de mocker fetch à la main.

## Tests d'Intégration

Objectif : vérifier la communication entre les différents modules. Le backend et la base de données sont **réels** (pas de simulation).

- Framework : github.com/ovh/venom.
- Périmètre :
  - Validation des endpoints des APIs ;
  - Vérification de la persistance des données dans MongoDB ;
  - Bon fonctionnement des middlewares.

## Tests de Contrat (architecture multi-repo)

Chaque service ayant son propre repo, les tests de contrat valident les interfaces entre services sans avoir à déployer toute la stack. C'est le niveau le plus important pour fiabiliser une architecture en microservices.

- Outil : [Pact](https://pact.io/) (contract testing *consumer-driven*).
- Principe :
  - Le consumer (ex. Front) décrit ce qu'il attend d'une API et génère un fichier de contrat (*pact*). Le test tourne dans **son** repo.
  - Le provider (ex. Backend Go, Microservice IA) rejoue ce contrat contre son vrai code pour prouver qu'il le respecte. Le test tourne dans **son** repo.
- Élément partagé : un Pact Broker (conteneur Docker, ou PactFlow en SaaS) — pas un repo, juste un service où les contrats sont publiés puis vérifiés. Chaque CI de chaque repo dialogue avec lui.
- Avantage multi-repo : chaque test tourne isolément dans son repo, sans lancer les autres services.

![Schéma de l’organisation des tests avec Pact](assets/pact.png)

## Tests End-to-End (E2E)

Catégorie **transverse** : valide la chaîne complète (UI → API → MongoDB) avec tous les composants réels (**aucun mock**).

Les contrats étant déjà couverts par Pact, les E2E sont **volontairement peu nombreux** : uniquement les parcours critiques (ex. login + reconnaissance faciale).

- **Objectif :** simuler les *user stories* principales.
- **Outil :** Playwright *(à confirmer)* — navigateurs web et simulateurs mobiles.
- **Emplacement :** dans le **repo Front** (point d'entrée des parcours), pas de repo dédié.
- **Exécution :** à la main ou en CI *nightly* (lance la stack via docker-compose), distincte du pipeline unitaire.

## Critères de Qualité et Couverture

### Couverture de code (par périmètre)

| **Périmètre** | **Seuil minimum** | **Priorité / Commentaire** |
|----|----|----|
| Backend Go | 80 % | Priorité aux repositories MongoDB et à la logique métier (domain). |
| Microservice IA Python | 65 % | Algorithmes de matching ; exclure le code de chargement de modèles. |
| Frontend React | 65 % | Priorité à la logique des composants ; le rendu purement visuel n'est pas comptabilisé. |

### Critères communs (tous périmètres)

| **Métrique** | **Seuil** | **Commentaire** |
|----|----|----|
| Passage des tests unitaires | 100 % | Aucun merge autorisé si un test échoue. |
| Passage des tests d'intégration | 100 % | Obligatoire pour les fonctionnalités critiques. |

## Récapitulatif

| **Niveau** | **Périmètre** | **Outil(s)** | **Backend** |
|----|----|----|----|
| Unitaire | Backend Go | testing | mocké / isolé |
| Unitaire | Microservice IA Python | pytest | mocké / isolé |
| Unitaire | Frontend React | Jest + RTL + MSW | mocké |
| Intégration | Endpoints + MongoDB + middlewares | Venom | réel |
| Contrat | Interfaces entre services (multi-repo) | Pact + Broker | isolé par repo |
| End-to-End | Parcours critiques uniquement | Playwright | réel (aucun mock) |

## Processus d'exécution (workflow)

1. Le développeur crée une branche depuis develop.
2. Il développe la fonctionnalité ou le correctif.
3. Il exécute les tests unitaires en local.
4. Il applique le formatage obligatoire (gofmt, Prettier, etc.).
5. Il ouvre une pull request.
6. GitHub Actions déclenche automatiquement les tests.
7. Un autre membre de l’équipe effectue une revue de code.
8. La pull request est fusionnée uniquement si la CI est valide et la revue approuvée.
