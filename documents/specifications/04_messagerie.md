# Messagerie

## Partie fonctionnelle

### Création d’une conversation

#### User story

En tant qu’organisateur, je veux créer une conversation avec un prestataire de mon évènement afin de pouvoir échanger avec lui.

#### Critères d’acceptation

- Présence d’un bouton "Contacter".
- Une seule conversation possible par prestataire.
- Impossible de créer une conversation avec un utilisateur non lié à l’évènement.
- Si une conversation existe déjà, redirection vers celle-ci.
- La conversation apparaît immédiatement dans la liste des conversations.

### Visualisation des conversations

#### User story

En tant qu’utilisateur connecté, je veux voir mes conversations afin d’accéder rapidement à mes échanges.

#### Critères d’acceptation

- Affichage uniquement des conversations de l’utilisateur connecté.
- Les conversations sont triées par dernier message (plus récent en haut).
- Affichage du dernier message en aperçu.
- Affichage d’un indicateur de messages non lus.

### Envoi d’un message

#### User story

En tant que participant à une conversation, je veux envoyer un message afin de communiquer avec le prestataire.

#### Critères d’acceptation

- Présence d’un champ de saisie obligatoire.
- Bouton "Envoyer" actif uniquement si contenu présent.
- Le message apparaît immédiatement dans la conversation.
- Le message est envoyé en temps réel au destinataire.
- Le message a le statut "envoyé".

### Notifications

#### User story

En tant qu’utilisateur connecté, je veux recevoir des notifications afin d’être informé des nouveaux messages.

#### Critères d’acceptation

- Présence d’une icône de notification.
- Affichage d’un compteur de notifications non lues.
- Affichage d’une bannière lors de la réception d’un message dans l’app.
- Notification push sur le téléphone lors de la réception d’un message
- Clic sur une notification redirige vers l’élément concerné.

## Partie technique

### Échange de message entre prestataire et organisateur

#### Création des conversations

##### Règles métier

- Une conversation peut exister uniquement entre un prestataire et un organisateur.
- Une seule conversation par paire prestataire/organisateur

##### API

- `POST /api/events/{eventId}/conversations`

##### Validations

- Utilisateur authentifié
- Event existant
- Utilisateur propriétaire de l’évènement
- Le receiver existe et est lié à l’évènement
- Pas de chat déjà existant

##### Tests

- 403 si non participant
- 401 si non connecté
- 404 si event non existant
- 409 si conversation déjà existante
- Conversation créée
- Participants correctement assignés

#### Récupération des conversations

##### Règles métier

- Retourne uniquement les conversations de l’utilisateur connecté

##### API

- `GET /api/events/{eventId}/conversations`

##### Validations

- Utilisateur authentifié
- Event existant
- Utilisateur propriétaire de l’évènement

##### Tests

- 403 si non participant
- 401 si non connecté
- 404 si event non existant
- Liste filtrée automatiquement

#### Envoi d’un message

##### Règles métier

- L’expéditeur doit participer à la conversation

##### API

- `POST /api/conversations/{conversationId}/messages`
- `Envoi sur socket aussi`

##### Validations

- Content obligatoire
- Utilisateur participant

##### Tests

- 403 si non participant
- 401 si non connecté
- 404 si conversation non existante
- Message créé
- status = SENT

#### Réception/Lecture d’un message

##### Règles métier

- Marque les messages comme READ si destinataire

##### API

- `GET /api/conversations/{conversationId}/messages`

##### Validations

- Utilisateur authentifié
- Le receiver existe et est lié à l’évènement

##### Tests

- 403 si non participant
- Message marqué comme READ

#### Suivi des messages

##### Règles métier

- Seul le receiver peut marquer comme lu

##### API

- `PUT /api/conversations/{conversationId}/messages`

##### Validations

- Utilisateur authentifié
- Le receiver existe et est lié à l’évènement

##### Tests

- 403 si non participant
- Message marqué comme READ

### Notification des messages

#### Notifications dans l’app

##### Règles métier

- Retourne uniquement les notifications de l’utilisateur connecté
- Types: MESSAGE, EVENT, PHOTO (à changer)

##### API

- `GET /api/notifications/`

##### Validations

- Utilisateur authentifié

##### Tests

- Infos de la notif

#### Notifications externes

##### API (webhook interne)

- `POST /internal/notifications/send`
