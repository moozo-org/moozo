# Administration

## Partie fonctionnelle

### Modération des prestataires

#### Consultation des prestataires

##### User story

En tant qu’administrateur, je peux consulter la liste complète des prestataires avec leur statut.

##### Critères d’acceptation

- Affichage de tous les prestataires.
- Statuts visibles :
  - En attente
  - Validé
  - Refusé
  - Suspendu
- Filtres par statut.
- Barre de recherche

#### Consulter le détail d’un prestataire

##### User story

En tant qu’administrateur, je peux consulter le détail d’un prestataire.

##### Critères d’acceptation

- Affichage :
  - Informations générales
  - Documents fournis
  - Prestations associées
  - Historique des actions administratives
  - Interface en lecture seule (hors actions de modération)

#### Valider un prestataire

##### User story

En tant qu’administrateur, je peux valider un prestataire afin de l’autoriser à publier ses prestations.

##### Critères d’acceptation

- Bouton “Valider”.
- Confirmation avant validation.
- Changement de statut immédiat.
- Notification automatique envoyée au prestataire

#### Refuser un prestataire

##### User story

En tant qu’administrateur, je peux refuser un prestataire avec un motif facultatif.

##### Critères d’acceptation

- Bouton “Refuser”.
- Champ pour ajouter un motif (optionnel).
- Confirmation avant validation.
- Notification automatique envoyée.
- Statut mis à jour

#### Suspendre un prestataire

##### User story

En tant qu’administrateur, je peux suspendre temporairement un prestataire.

##### Critères d’acceptation

- Bouton “Suspendre”.
- Confirmation obligatoire.
- Le prestataire ne peut plus publier.
- Statut affiché “Suspendu”

#### Réactiver un prestataire suspendu

##### User story

En tant qu’administrateur, je peux réactiver un prestataire suspendu.

##### Critères d’acceptation

- Bouton “Réactiver”.
- Changement immédiat de statut.
- Notification automatique envoyée

#### Consulter l’historique administratif

##### User story

En tant qu’administrateur, je peux consulter l’historique des actions liées à un prestataire.

##### Critères d’acceptation

- Historique chronologique.
- Affichage :
  - Date
  - Action réalisée
  - Administrateur responsable

### Modération des prestations

#### Consultation des prestations

##### User story

En tant qu’administrateur, je peux consulter toutes les prestations avec leur statut.

##### Critères d’acceptation

- Statuts visibles :
  - En attente
  - Publiée
  - Refusée
  - Supprimée
- Filtres disponibles.
- Recherche par mot-clé.

#### Valider une prestation

##### User story

En tant qu’administrateur, je peux valider une prestation.

##### Critères d’acceptation

- Bouton “Valider”.
- Confirmation requise.
- La prestation devient visible aux utilisateurs.
- Notification envoyée au prestataire

#### Refuser une prestation

##### User story

En tant qu’administrateur, je peux refuser une prestation avec un motif.

##### Critères d’acceptation

- Champ motif obligatoire.
- Confirmation avant refus.
- Notification automatique.
- Statut mis à jour

#### Supprimer une prestation

##### User story

En tant qu’administrateur, je peux supprimer une prestation non conforme.

##### Critères d’acceptation

- Confirmation obligatoire.
- La prestation devient invisible.
- Action enregistrée dans l’historique

### Modération des avis

#### Consulter l’ensemble des avis

##### User story

En tant qu’administrateur, je veux consulter l’ensemble des avis publiés sur les prestataires et leurs prestations afin d’assurer la conformité et la qualité des contenus.

##### Critères d’acceptation

- L’administrateur peut accéder à une liste complète des avis.
- Chaque avis affiche au minimum :
  - Auteur
  - Prestataire concerné
  - Prestation concernée
  - Note
  - Date de publication
  - Statut
- La liste est paginée.
- Les avis sont triables par date (ascendant / descendant).

#### Filtrer les avis par statut

##### User story

En tant qu’administrateur, je veux filtrer les avis selon leur statut afin de traiter efficacement les avis problématiques.

##### Critères d’acceptation

- Un filtre par statut est disponible. (En attente, Signalé, Publié, Masqué)
- Le filtre peut être combiné avec un tri par date.
- Le nombre d’avis par statut est affiché.
- Le changement de filtre met à jour la liste sans rechargement complet de la page.

#### Consulter le détail d’un avis

##### User story

En tant qu’administrateur, je veux consulter le détail complet d’un avis afin de prendre une décision de modération éclairée.

##### Critères d’acceptation

- L’administrateur peut accéder à une fiche détaillée (Identité de l’auteur, Email (si autorisé RGPD), Date de publication, Note attribuée, Contenu intégral, Historique des signalements, Nombre de signalements, Statut actuel).
- Les signalements affichent :
  - Motif
  - Date
  - Utilisateur ayant signalé
- L’historique des actions de modération est visible.

#### Supprimer définitivement un avis

##### User story

En tant qu’administrateur, je veux supprimer définitivement un avis non conforme afin de garantir la qualité et la légalité des contenus.

##### Critères d’acceptation

- Un bouton “Supprimer définitivement” est disponible.
- Une confirmation est demandée avant suppression.
- L’avis est supprimé de manière irréversible.
- L’action est enregistrée dans un journal d’audit.
- L’auteur peut être notifié (option configurable).

#### Masquer temporairement un avis

##### User story

En tant qu’administrateur, je veux masquer temporairement un avis afin de le retirer de l’affichage public sans le supprimer.

##### Critères d’acceptation

- Le statut de l’avis passe à “Masqué”.
- L’avis n’est plus visible publiquement.
- Il reste accessible dans l’interface d’administration.
- L’action est historisée.

#### Restaurer un avis masqué

##### User story

En tant qu’administrateur, je veux restaurer un avis précédemment masqué afin de le rendre à nouveau visible.

##### Critères d’acceptation

- Le statut redevient “Publié”.
- L’avis redevient visible publiquement.
- L’action est tracée dans l’historique.
- La date de restauration est enregistrée.

#### Consulter les avis signalés

##### User story

En tant qu’administrateur, je veux consulter les avis signalés afin d’identifier les contenus potentiellement abusifs.

##### Critères d’acceptation

- Une section dédiée “Avis signalés” existe.
- Les avis sont triés par nombre de signalements.
- Les motifs sont consultables.
- L’administrateur peut agir directement depuis cette vue.

#### Bannir un utilisateur abusif

##### User story

En tant qu’administrateur, je veux bannir temporairement ou définitivement un utilisateur abusif afin de protéger la plateforme.

##### Critères d’acceptation

- L’administrateur peut choisir la durée.
- Une justification est obligatoire.
- L’utilisateur est empêché de se connecter (si bannissement complet).
- L’action est enregistrée dans l’historique des sanctions.
- Une notification est envoyée à l’utilisateur.

#### Suspendre le droit de publication d’avis

##### User story

En tant qu’administrateur, je veux suspendre la capacité d’un utilisateur à publier des avis afin de limiter les abus sans bannir totalement le compte.

##### Critères d’acceptation

- L’utilisateur peut continuer à utiliser la plateforme.
- Il ne peut plus publier d’avis pendant la période définie.
- Un message explicite est affiché à l’utilisateur.
- La suspension est historisée.

#### Consulter l’historique des sanctions

##### User story

En tant qu’administrateur, je veux consulter l’historique des sanctions d’un utilisateur afin d’évaluer son comportement global.

##### Critères d’acceptation

- L’historique est accessible depuis la fiche utilisateur.
- Les sanctions sont listées chronologiquement.
- Les sanctions expirées sont identifiables.
- Les données ne sont pas modifiables (lecture seule).

## Partie technique

### Modération des prestataires

#### Consultation des prestataires

Permettre à un administrateur de consulter la liste complète des prestataires avec leur statut de modération.

##### Règles métier

- Accessible uniquement aux utilisateurs avec le rôle ADMIN.
- La liste affiche tous les prestataires quel que soit leur statut.
- Les filtres par statut et la recherche par mot-clé sont disponibles simultanément.

##### API

- `GET /api/admin/providers — Query params : ?status=EN_ATTENTE|VALIDE|REFUSE|SUSPENDU&search=keyword&page=1`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, paramètres de pagination valides, valeur de statut parmi les valeurs autorisées si renseignée.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 200 + liste paginée des prestataires
- Filtre par statut fonctionnel
- Recherche par mot-clé fonctionnelle
- Statuts visibles : EN_ATTENTE / VALIDE / REFUSE / SUSPENDU

#### Consulter le détail d’un prestataire

Permettre à un administrateur de consulter la fiche complète d'un prestataire pour prendre une décision de modération éclairée.

##### Règles métier

- Interface en lecture seule hors boutons d'action de modération.
- Les documents fournis par le prestataire sont accessibles.
- L'historique des actions administratives est affiché chronologiquement.

##### API

- `GET /api/admin/providers/{providerId}`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestataire existant.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestataire inexistant
- 200 + fiche complète retournée avec informations générales, documents, prestations associées et historique des actions

#### Valider un prestataire

Autoriser un prestataire à publier ses prestations sur la plateforme.

##### Règles métier

- Le prestataire doit être au statut EN_ATTENTE.
- Le statut passe immédiatement à VALIDE après confirmation.
- Une notification est automatiquement envoyée au prestataire.
- L'action est enregistrée dans l'historique administratif avec la date, l'action et l'administrateur responsable.

##### API

- `POST /api/admin/providers/{providerId}/validate`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestataire existant, prestataire au statut EN_ATTENTE.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestataire inexistant
- 409 si prestataire déjà validé ou refusé
- 200 + statut = VALIDE
- Notification envoyée au prestataire
- Action enregistrée dans l'historique

#### Refuser un prestataire

Rejeter la demande d'inscription d'un prestataire avec un motif facultatif.

##### Règles métier

- Le prestataire doit être au statut EN_ATTENTE.
- Un motif de refus peut être ajouté (optionnel).
- Le statut passe à REFUSE après confirmation.
- Une notification est automatiquement envoyée au prestataire.
- L'action est enregistrée dans l'historique administratif.

##### API

- `POST /api/admin/providers/{providerId}/refuse`
- `Corps attendu : { "motif": "..." } (optionnel)`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestataire existant, prestataire au statut EN_ATTENTE.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestataire inexistant
- 409 si prestataire dans un statut non modifiable
- 200 + statut = REFUSE
- Notification envoyée avec motif si renseigné
- Action enregistrée dans l'historique

#### Suspendre un prestataire

Désactiver temporairement un prestataire validé afin de l'empêcher de publier de nouvelles prestations.

##### Règles métier

- Le prestataire doit être au statut VALIDE.
- La confirmation est obligatoire avant suspension.
- Le statut passe à SUSPENDU.
- Le prestataire ne peut plus créer ni modifier de prestations visibles.
- L'action est enregistrée dans l'historique administratif.

##### API

- `POST /api/admin/providers/{providerId}/suspend`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestataire existant, prestataire au statut VALIDE.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestataire inexistant
- 409 si prestataire déjà suspendu ou non validé
- 200 + statut = SUSPENDU
- Le prestataire ne peut plus publier
- Action enregistrée dans l'historique

#### Réactiver un prestataire suspendu

Rétablir l'accès à la publication pour un prestataire précédemment suspendu.

##### Règles métier

- Le prestataire doit être au statut SUSPENDU.
- Le statut repasse à VALIDE immédiatement.
- Une notification est automatiquement envoyée au prestataire.
- L'action est enregistrée dans l'historique administratif.

##### API

- `POST /api/admin/providers/{providerId}/reactivate`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestataire existant, prestataire au statut SUSPENDU.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestataire inexistant
- 409 si prestataire non suspendu
- 200 + statut = VALIDE
- Notification envoyée au prestataire
- Action enregistrée dans l'historique

#### Consulter l’historique administratif d’un prestataire

Permettre à un administrateur de consulter le journal complet des actions réalisées sur un prestataire.

##### Règles métier

- L'historique est accessible en lecture seule.
- Les entrées sont affichées par ordre chronologique décroissant.
- Chaque entrée contient la date, l'action réalisée et l'administrateur responsable.

##### API

- `GET /api/admin/providers/{providerId}/history`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestataire existant.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestataire inexistant
- 200 + historique chronologique retourné
- Chaque entrée contient date, action et administrateur responsable

### Modération des prestations

#### Consultation des prestations

Permettre à un administrateur de consulter l'ensemble des prestations déposées sur la plateforme quel que soit leur statut.

##### Règles métier

- Accessible uniquement aux utilisateurs avec le rôle ADMIN.
- Les filtres par statut et la recherche par mot-clé sont disponibles.
- Statuts visibles : EN_ATTENTE_VALIDATION, VALIDEE, REFUSEE, SUPPRIMEE.

##### API

- `GET /api/admin/prestations — Query params : ?status=EN_ATTENTE_VALIDATION|VALIDEE|REFUSEE|SUPPRIMEE&search=keyword&page=1`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, paramètres de pagination valides.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 200 + liste paginée des prestations
- Filtres par statut fonctionnels
- Recherche par mot-clé fonctionnelle

#### Valider une prestation

Rendre une prestation visible publiquement après vérification par l'administrateur.

##### Règles métier

- La prestation doit être au statut EN_ATTENTE_VALIDATION.
- Une confirmation est requise avant validation.
- Le statut passe à VALIDEE.
- La prestation devient visible aux utilisateurs.
- Une notification est envoyée au prestataire.
- L'action est enregistrée dans l'historique.

##### API

- `POST /api/admin/prestations/{prestationId}/validate`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestation existante, prestation au statut EN_ATTENTE_VALIDATION.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestation inexistante
- 409 si prestation dans un statut non validable
- 200 + statut = VALIDEE
- Prestation visible publiquement
- Notification envoyée au prestataire
- Action enregistrée dans l'historique

#### Refuser une prestation

Rejeter une prestation non conforme avec un motif obligatoire.

##### Règles métier

- Le motif de refus est obligatoire.
- Une confirmation est requise avant refus.
- Le statut passe à REFUSEE.
- Une notification est envoyée au prestataire avec le motif.
- La prestation n'est plus visible publiquement.
- L'action est enregistrée dans l'historique.

##### API

- `POST /api/admin/prestations/{prestationId}/refuse`
- `Corps attendu : { "motif": "..." } (obligatoire)`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestation existante, motif obligatoire et non vide.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestation inexistante
- 400 si motif absent ou vide
- 200 + statut = REFUSEE
- Notification envoyée avec motif
- Action enregistrée dans l'historique

#### Supprimer une prestation

Retirer définitivement une prestation non conforme de la plateforme.

##### Règles métier

- Suppression logique, le statut passe à SUPPRIMEE.
- Une confirmation est obligatoire avant suppression.
- La prestation devient invisible publiquement.
- Les données sont conservées en base.
- L'action est enregistrée dans l'historique.

##### API

- `POST /api/admin/prestations/{prestationId}/delete`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, prestation existante et non déjà supprimée.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si prestation inexistante
- 409 si prestation déjà supprimée
- 200 + statut = SUPPRIMEE
- Prestation invisible publiquement
- Action enregistrée dans l'historique

### Modération des avis

#### Consulter l’ensemble des avis

Permettre à un administrateur de consulter tous les avis publiés sur les prestataires et leurs prestations afin d'assurer la conformité et la qualité des contenus.

##### Règles métier

- Accessible uniquement aux utilisateurs avec le rôle ADMIN.
- La liste est paginée.
- Les avis sont triables par date ascendant ou descendant.
- Chaque avis affiche : auteur, prestataire concerné, prestation concernée, note, date de publication, statut.

##### API

- `GET /api/admin/reviews — Query params : ?status=EN_ATTENTE|SIGNALE|PUBLIE|MASQUE&sort=date_asc|date_desc&page=1`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, paramètres de pagination valides, valeur de tri parmi les valeurs autorisées si renseignée.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 200 + liste paginée des avis avec tous les champs attendus
- Tri par date fonctionnel dans les deux sens

#### Filtrer les avis par statut

Permettre à un administrateur de filtrer les avis selon leur statut pour traiter efficacement les contenus problématiques.

##### Règles métier

- Statuts filtrables : EN_ATTENTE, SIGNALE, PUBLIE, MASQUE.
- Le filtre peut être combiné avec un tri par date.
- Le nombre d'avis par statut est affiché.
- Le changement de filtre met à jour la liste sans rechargement complet de la page.

##### API

- `GET /api/admin/reviews?status=SIGNALE&sort=date_desc`
- `GET /api/admin/reviews/counts — retourne le nombre d'avis par statut`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, valeur de statut parmi les valeurs autorisées.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 400 si statut invalide
- 200 + liste filtrée correspondant au statut demandé
- 200 + compteurs par statut retournés depuis /counts

#### Consulter le détail d’un avis

Permettre à un administrateur de consulter la fiche complète d'un avis pour prendre une décision de modération éclairée.

##### Règles métier

- L'email de l'auteur est affiché uniquement si autorisé par les règles RGPD applicables.
- Les signalements associés affichent le motif, la date et l'utilisateur ayant signalé.
- L'historique des actions de modération sur cet avis est visible.

##### API

- `GET /api/admin/reviews/{reviewId}`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, avis existant.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si avis inexistant
- 200 + fiche complète avec identité auteur, date, note, contenu intégral, historique des signalements, nombre de signalements, statut actuel et historique des actions de modération

#### Supprimer définitivement un avis

Retirer de façon irréversible un avis non conforme afin de garantir la qualité et la légalité des contenus.

##### Règles métier

- La suppression est irréversible (hard delete).
- Une confirmation est obligatoire avant suppression.
- L'action est enregistrée dans le journal d'audit avec date et administrateur responsable.
- L'auteur peut être notifié selon une option configurable.

##### API

- `DELETE /api/admin/reviews/{reviewId}`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, avis existant.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si avis inexistant
- 200 + avis supprimé de manière irréversible
- Action enregistrée dans le journal d'audit
- Notification envoyée à l'auteur si option activée

#### Masquer temporairement un avis

Retirer un avis de l'affichage public sans le supprimer définitivement, le temps d'une instruction.

##### Règles métier

- Le statut de l'avis passe à MASQUE.
- L'avis reste accessible dans l'interface d'administration.
- L'avis n'est plus visible publiquement.
- L'action est enregistrée dans l'historique avec la date et l'administrateur responsable.

##### API

- `POST /api/admin/reviews/{reviewId}/hide`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, avis existant au statut PUBLIE ou SIGNALE.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si avis inexistant
- 409 si avis déjà masqué ou supprimé
- 200 + statut = MASQUE
- Avis non visible publiquement
- Action enregistrée dans l'historique

#### Restaurer un avis masqué

Rendre à nouveau visible publiquement un avis précédemment masqué.

##### Règles métier

- L'avis doit être au statut MASQUE.
- Le statut repasse à PUBLIE.
- La date de restauration est enregistrée.
- L'action est tracée dans l'historique.

##### API

- `POST /api/admin/reviews/{reviewId}/restore`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, avis existant au statut MASQUE.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si avis inexistant
- 409 si avis non masqué
- 200 + statut = PUBLIE
- Avis visible publiquement
- Date de restauration enregistrée
- Action tracée dans l'historique

#### Consulter les avis signalés

Permettre à un administrateur de traiter en priorité les avis potentiellement abusifs identifiés par les utilisateurs.

##### Règles métier

- Section dédiée distincte de la liste générale des avis.
- Les avis sont triés par nombre de signalements décroissant.
- Les motifs de signalement sont consultables.
- L'administrateur peut agir directement depuis cette vue.

##### API

- `GET /api/admin/reviews/reported — Query params : ?page=1`

##### Validations

- Utilisateur authentifié, rôle = ADMIN.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 200 + liste paginée des avis signalés triée par nombre de signalements décroissant
- Motifs de signalement retournés pour chaque avis
- Actions de modération accessibles depuis la réponse

#### Bannir un utilisateur abusif

Empêcher temporairement ou définitivement un utilisateur abusif d'accéder à la plateforme.

##### Règles métier

- L'administrateur choisit la durée : temporaire (avec date de fin) ou définitive.
- La justification est obligatoire.
- Si bannissement complet, l'utilisateur ne peut plus se connecter.
- L'action est enregistrée dans l'historique des sanctions.
- Une notification est envoyée à l'utilisateur.

##### API

- `POST /api/admin/users/{userId}/ban`
- `Corps attendu : { "duration": "TEMPORARY|PERMANENT", "endDate": "2025-12-31", "reason": "..." }`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, utilisateur existant et non déjà banni, justification obligatoire et non vide, endDate obligatoire si durée = TEMPORARY et postérieure à la date actuelle.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si utilisateur inexistant
- 409 si utilisateur déjà banni
- 400 si justification absente
- 400 si endDate absente ou invalide pour un bannissement temporaire
- 200 + utilisateur banni, connexion bloquée
- Action enregistrée dans l'historique des sanctions
- Notification envoyée à l'utilisateur

#### Suspendre le droit de publication d’avis

Restreindre la capacité d'un utilisateur à publier des avis sans l'empêcher d'utiliser le reste de la plateforme.

##### Règles métier

- L'utilisateur peut continuer à utiliser la plateforme normalement.
- Il ne peut plus publier d'avis pendant la période définie.
- Un message explicite lui est affiché lors de toute tentative de publication d'avis.
- La suspension est enregistrée dans l'historique des sanctions.

##### API

- `POST /api/admin/users/{userId}/suspend-reviews`
- `Corps attendu : { "endDate": "2025-12-31", "reason": "..." }`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, utilisateur existant, endDate obligatoire et postérieure à la date actuelle, justification obligatoire.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si utilisateur inexistant
- 400 si endDate absente ou invalide
- 400 si justification absente
- 200 + droit de publication suspendu jusqu'à endDate
- Tentative de publication retourne une erreur explicite pour l'utilisateur concerné
- Suspension enregistrée dans l'historique

#### Consulter l’historique des sanctions d’un utilisateur

Permettre à un administrateur d'évaluer le comportement global d'un utilisateur en consultant l'ensemble de ses sanctions passées et en cours.

##### Règles métier

- L'historique est accessible en lecture seule depuis la fiche utilisateur.
- Les sanctions sont listées par ordre chronologique décroissant.
- Les sanctions expirées sont identifiables.
- Les données ne sont pas modifiables.

##### API

- `GET /api/admin/users/{userId}/sanctions`

##### Validations

- Utilisateur authentifié, rôle = ADMIN, utilisateur existant.

##### Tests

- 401 si non connecté
- 403 si rôle différent de ADMIN
- 404 si utilisateur inexistant
- 200 + liste chronologique des sanctions
- Sanctions expirées identifiables dans la réponse
- Données retournées en lecture seule
