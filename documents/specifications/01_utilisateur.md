# Utilisateur

## Partie fonctionnelle

### Inscription d’un organisateur

#### User story

En tant qu’organisateur, je veux m’inscrire depuis la page d’inscription organisateur afin de créer un compte Moozo.

#### Critères d’acceptation

- Page d’inscription dédiée aux organisateurs
- Saisie du nom, prénom, courriel ou téléphone, mot de passe
- Acceptation des CGU et de la politique de confidentialité
- Validation du formulaire

### Inscription d’un prestataire

#### User story

En tant que prestataire, je veux m’inscrire depuis une page d’inscription dédiée afin de créer un compte prestataire et proposer mes services.

#### Critères d’acceptation

- Page d’inscription distincte de celle de l’organisateur, accessible depuis un lien dédié (ex. « Devenir prestataire »)
- Saisie du nom, prénom, courriel ou téléphone, mot de passe
- Envoi de justificatifs officiels (liste des documents à définir)
- Acceptation des CGU et de la politique de confidentialité
- Validation du formulaire
- Le compte prestataire doit être validé par un administrateur avant de pouvoir publier des prestations

### Vérification du compte

#### User story

En tant qu’utilisateur, je veux vérifier mon compte afin d’activer mon accès à la plateforme.

#### Critères d’acceptation

- Envoi d’un code de vérification par courriel ou SMS après inscription
- Saisie du code par l’utilisateur pour activer le compte
- Possibilité de renvoyer un code si non reçu ou expiré

### Connexion

#### User story

En tant qu’utilisateur, je veux me connecter afin d’accéder à mon espace Moozo.

#### Critères d’acceptation

- Connexion avec courriel ou téléphone et mot de passe

### Mot de passe oublié

#### User story

En tant qu’utilisateur, je veux réinitialiser mon mot de passe afin de retrouver l’accès à mon compte.

#### Critères d’acceptation

- Saisie du courriel ou téléphone
- Envoi d’un lien ou code de réinitialisation
- Définition d’un nouveau mot de passe

### Consultation du profil

#### User story

En tant qu’utilisateur, je veux consulter mon profil afin de voir mes informations personnelles.

#### Critères d’acceptation

- Consultation des informations personnelles

### Modification du profil

#### User story

En tant qu’utilisateur, je veux modifier mon profil afin de mettre à jour mes informations personnelles.

#### Critères d’acceptation

- Modification des informations personnelles

### Déconnexion

#### User story

En tant qu’utilisateur, je veux me déconnecter afin de sécuriser mon compte.

#### Critères d’acceptation

- Déconnexion depuis le profil

### Suppression du compte

#### User story

En tant qu’utilisateur, je veux supprimer mon compte afin de retirer définitivement mon accès à la plateforme.

#### Critères d’acceptation

- Demande de suppression depuis le profil
- Confirmation avant suppression définitive

### Vérification de la personne lors de l’événement (invité)

#### User story

En tant qu’invité, je veux vérifier mon identité lors de l’événement afin de confirmer que je suis bien la bonne personne.

#### Critères d’acceptation

- Vérification par courriel ou téléphone pour confirmer l’identité de l’invité

## Partie technique

### Inscription d’un organisateur

Permettre à un nouvel organisateur de créer un compte sur la plateforme Moozo.

#### Règles métier

- Inscription depuis une page dédiée aux organisateurs
- Le rôle ORGANIZER est attribué automatiquement
- L'email OU le numéro de téléphone est obligatoire
- Le mot de passe doit respecter une complexité minimale (8 caractères, majuscule, chiffre)
- Acceptation des CGU obligatoire
- Un code de vérification est envoyé automatiquement après l'inscription (email ou SMS)

#### API

- `POST /api/auth/register`

#### Validations

- nom et prénom obligatoires
- email OU téléphone obligatoire
- mot de passe : min. 8 caractères
- CGU acceptées
- Email unique en base

#### Tests

- 400 si email ET téléphone absents
- 400 si CGU non acceptées
- 400 si mot de passe trop faible
- 409 si email déjà existant
- 201 + envoi du code de vérification
- Compte créé avec statut PENDING
- Compte créé avec le rôle ORGANIZER

### Inscription d’un prestataire

Permettre à un nouveau prestataire de créer un compte depuis une page d’inscription dédiée.

#### Règles métier

- Inscription depuis une page distincte de celle de l'organisateur
- Mêmes règles que l'inscription organisateur : email OU téléphone obligatoire, complexité du mot de passe, acceptation des CGU
- Des justificatifs officiels sont demandés à l'inscription (liste des documents à définir)
- Le rôle PROVIDER est attribué automatiquement
- Un code de vérification est envoyé automatiquement après l'inscription (email ou SMS)
- Le prestataire est créé au statut EN_ATTENTE : il ne peut pas publier de prestation tant qu'un administrateur ne l'a pas validé

#### API

- `POST /api/auth/register/provider` (endpoint à confirmer)

#### Validations

- nom et prénom obligatoires
- email OU téléphone obligatoire
- mot de passe : min. 8 caractères
- CGU acceptées
- Email unique en base
- justificatifs obligatoires (formats et taille à définir)

#### Tests

- 400 si email ET téléphone absents
- 400 si CGU non acceptées
- 400 si mot de passe trop faible
- 400 si justificatifs absents
- 409 si email déjà existant
- 201 + envoi du code de vérification
- Compte créé avec statut PENDING et le rôle PROVIDER
- Prestataire créé au statut EN_ATTENTE

### Vérification du compte

Activer le compte de l'utilisateur après vérification du code reçu par email ou SMS.

#### Règles métier

- Le code expire après un délai défini (ex: 15 minutes)
- L'utilisateur peut renvoyer un nouveau code si l'ancien est expiré ou non reçu
- Le compte passe au statut ACTIVE après validation

#### API

- `POST /api/auth/verify`
- `POST /api/auth/resend-verification`

#### Validations

- code obligatoire
- code non expiré
- utilisateur en statut PENDING

#### Tests

- 400 si code invalide
- 400 si code expiré
- 200 + statut ACTIVE après validation
- nouveau code envoyé sur POST /resend-verification

### Connexion

Authentifier un utilisateur existant et créer une session.

#### Règles métier

- Connexion possible par email ou téléphone + mot de passe
- Session créée via cookie sécurisé
- Redirection selon le rôle de l'utilisateur (ORGANIZER, PROVIDER, ADMIN)

#### API

- `POST /api/auth/login`

#### Validations

- email ou téléphone obligatoire
- mot de passe obligatoire
- compte en statut ACTIVE

#### Tests

- 400 si champs manquants
- 401 si identifiants incorrects
- 403 si compte PENDING ou BANNED
- 200 + cookie de session créé
- rôle correctement retourné pour redirection

### Mot de passe oublié

Permettre à un utilisateur de réinitialiser son mot de passe via email ou SMS.

#### Règles métier

- Un lien ou code de réinitialisation est envoyé à l'email ou téléphone
- Le token de réinitialisation expire après un délai (ex: 30 minutes)
- Le nouveau mot de passe doit respecter les mêmes règles de complexité

#### API

- `POST /api/auth/forgot-password`
- `POST /api/auth/reset-password`

#### Validations

- email ou téléphone obligatoire
- token non expiré
- nouveau mot de passe : min. 8 caractères

#### Tests

- 404 si email/téléphone inconnu
- 400 si token expiré
- 400 si nouveau mot de passe invalide
- 200 + mot de passe mis à jour
- ancien token invalidé après utilisation

### Consultation du profil

Permettre à un utilisateur connecté de consulter ses informations personnelles.

#### Règles métier

- Seul l'utilisateur connecté peut consulter son propre profil

#### API

- `GET /api/users/me`

#### Validations

- Utilisateur authentifié

#### Tests

- 401 si non connecté
- 200 + données du profil retourné

### Modification du profil

Permettre à un utilisateur connecté de mettre à jour ses informations personnelles.

#### Règles métier

- Seul l'utilisateur connecté peut modifier son propre profil
- La modification du mot de passe est gérée séparément (cf. 1.4)
- En cas de modification de l'email ou du téléphone, une re-vérification peut être nécessaire

#### API

- `PUT /api/users/me`

#### Validations

- Utilisateur authentifié
- Email unique si modifié
- Format valide pour email et téléphone

#### Tests

- 401 si non connecté
- 409 si nouvel email déjà pris
- 200 + profil mis à jour

### Déconnexion

Permettre à un utilisateur de se déconnecter et détruire sa session.

#### Règles métier

- Le cookie de session est détruit côté serveur

#### API

- `POST /api/auth/logout`

#### Validations

- Utilisateur authentifié

#### Tests

- 401 si non connecté
- 200 + cookie détruit

### Suppression du compte

Permettre à un utilisateur de supprimer définitivement son compte après confirmation.

#### Règles métier

- Soft delete : le compte passe au statut DELETED
- Les données associées sont anonymisées ou désactivées
- Une confirmation explicite est requise (saisie du mot de passe ou confirmation modale)
- L'utilisateur est déconnecté automatiquement après suppression

#### API

- `DELETE /api/users/me`

#### Validations

- Utilisateur authentifié
- Confirmation obligatoire

#### Tests

- 401 si non connecté
- 400 si confirmation absente
- 200 + statut DELETED
- session détruite après suppression

### Vérification de la personne lors de l’événement (invité)

Confirmer l'identité d'un invité lors de l'événement via son email ou numéro de téléphone.

#### Règles métier

- Vérification par email ou téléphone enregistré dans la liste des invités
- L'invité doit avoir répondu positivement au RSVP

#### API

- `POST /api/events/{eventId}/guests/verify`

#### Validations

- Email ou téléphone obligatoire
- Invité lié à l'événement
- Statut RSVP = ACCEPTED

#### Tests

- 404 si invité non trouvé
- 403 si RSVP refusé ou en attente
- 200 + identité confirmée
