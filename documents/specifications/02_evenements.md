# Événements

## Partie fonctionnelle

### Événement

#### Création d’un événement

##### User story

En tant qu’organisateur, je peux créer un évènement à l’aide d’un formulaire.

##### Critères d’acceptation

- Le formulaire contient au minimum :
  - Nom de l’événement
- Les champs obligatoires sont validés avant soumission.
- Un message de confirmation s’affiche après création.
- L’événement apparaît dans la liste des événements.

#### Modification d’un événement

##### User story

En tant qu’organisateur, je veux modifier un événement existant afin de mettre à jour ses informations.

##### Critères d’acceptation

- L’organisateur peut sélectionner un événement.
- Un formulaire prérempli s’ouvre.
- Les modifications sont sauvegardées après validation.
- Un message confirme la mise à jour.

#### Suppression d’un événement

##### User story

En tant qu’organisateur, je veux supprimer un événement afin de le retirer définitivement.

##### Critères d’acceptation

- L’organisateur peut sélectionner un événement.
- Une fenêtre de confirmation s’affiche.
- Après validation, l’événement est supprimé.
- L’événement disparaît de la liste.

### Invités

#### Ajouter un invité

##### User story

En tant qu’organisateur, je veux ajouter un invité afin de constituer ma liste d’invités.

##### Critères d’acceptation

- Le formulaire contient :
  - Nom
  - Email et/ou numéro de téléphone (au moins un obligatoire)
- Le système empêche la création sans email ni téléphone.
- L’invité apparaît dans la liste.

#### Modifier un invité

##### User story

En tant qu’organisateur, je veux modifier les informations d’un invité.

##### Critères d’acceptation

- L’invité peut être sélectionné.
- Un formulaire prérempli s’ouvre.
- Email ou téléphone reste obligatoire.
- Les modifications sont sauvegardées.

#### Supprimer un invité

##### User story

En tant qu’organisateur, je veux supprimer un ou plusieurs invités.

##### Critères d’acceptation

- Sélection multiple possible.
- Confirmation avant suppression.
- Les invités sont retirés de la liste.

#### Envoyer une demande de RSVP

##### User story

En tant qu’organisateur, je veux envoyer une demande de RSVP afin de connaître la présence des invités.

##### Critères d’acceptation

- L’envoi est possible uniquement si la liste est validée.
- L’organisateur choisit :
  - Email
  - SMS
  - Les deux
- Les invités reçoivent un message contenant :
  - Accepté
  - Refusé
  - En attente

#### Relancer un invité

##### User story

En tant qu’organisateur, je veux relancer automatiquement ou manuellement les invités n’ayant pas répondu.

##### Critères d’acceptation

- Paramétrage du délai en jours.
- Envoi automatique après le délai.
- Possibilité de relance individuelle.
- Historique des relances visible

#### Voir les invités

##### User story

##### Critères d’acceptation

#### Répondre à un RSVP (invité)

##### User story

En tant qu’invité, je veux répondre à un RSVP afin d’indiquer ma présence.

##### Critères d’acceptation

- L’invité reçoit un lien sécurisé.
- Il peut choisir :
  - Accepter
  - Refuser
  - En attente
  - Le statut est mis à jour en temps réel

### Plan de salle

#### Création de la salle

##### User story

En tant qu’organisateur, je veux modéliser la salle afin de créer un plan de table.

##### Critères d’acceptation

- Définition :
  - Dimensions
  - Nombre d’étages
- Interface graphique de positionnement.
- Sauvegarde du plan.

#### Gestion des tables

##### User story

En tant qu’organisateur, je veux ajouter, modifier ou supprimer des tables.

##### Critères d’acceptation

- Ajout avec :
  - Forme
  - Capacité
- Positionnement drag & drop.
- Suppression possible.
- Les tables respectent la capacité maximale

#### Visualisation du plan de table (invité)

##### User story

En tant qu’invité, je veux consulter le plan de table.

##### Critères d’acceptation

- Accès en lecture seule.
- Clic sur une table → liste des invités.
- Interface responsive

### Programmation

#### Ajouter une étape à la programmation

##### User story

En tant qu’organisateur, je veux ajouter une étape via un bouton ouvrant une fenêtre modale avec un formulaire.

##### Critères d’acceptation

- Un bouton “Ajouter une étape” est visible.
- Un clic ouvre une fenêtre modale.
- Le formulaire contient :
  - Titre (obligatoire)
  - Heure de début (obligatoire)
  - Heure de fin (optionnelle)
  - Description (optionnelle)
- Les champs obligatoires sont validés.
- Après validation :
  - La fenêtre se ferme
  - L’étape apparaît immédiatement dans la liste

#### Visualiser la programmation

##### User story

En tant qu’organisateur, je veux visualiser la programmation de l’événement afin de consulter le déroulement prévu.

##### Critères d’acceptation

- La programmation est affichée sous forme chronologique.
- Chaque étape contient :
  - Titre
  - Heure de début
  - Heure de fin (optionnel)
  - Description (optionnelle)
- L’affichage est clair et ordonné.
- Les modifications sont visibles immédiatement après mise à jour

#### Supprimer une étape

##### User story

En tant qu’organisateur, je veux supprimer une étape existante via une fenêtre de confirmation.

##### Critères d’acceptation

- Chaque étape possède un bouton “Supprimer”.
- Une fenêtre modale de confirmation s’affiche.
- La suppression est effective après validation.
- L’étape disparaît immédiatement de la liste

#### Visualisation de la programmation (invité)

##### User story

En tant qu’invité, je veux visualiser la programmation sur une page dédiée afin de connaître le déroulement de l’événement.

##### Critères d’acceptation

- Page accessible via lien invité.
- Affichage en lecture seule.
- Les étapes sont affichées par ordre chronologique.
- Interface responsive (mobile / tablette / desktop)

### Liste des tâches

#### Ajout d’une tâche

##### User story

En tant qu’organisateur, je veux ajouter une tâche afin de planifier les actions à réaliser.

##### Critères d’acceptation

- Bouton “Ajouter une tâche”.
- Formulaire contenant :
  - Titre (obligatoire)
  - Description (optionnelle)
  - Date d’échéance (optionnelle)
- Validation des champs obligatoires.
- La tâche apparaît dans la liste après création

#### Modification d’une tâche

##### User story

En tant qu’organisateur, je veux modifier une tâche existante.

##### Critères d’acceptation

- Sélection possible d’une tâche.
- Formulaire prérempli.
- Modification des champs :
  - Titre
  - Description
  - Échéance
- Sauvegarde après validation.
- Mise à jour immédiate dans la liste

#### Validation d’une tâche

##### User story

En tant qu’organisateur, je veux marquer une tâche comme terminée.

##### Critères d’acceptation

- Présence d’une case à cocher ou bouton “Terminé”.
- La tâche change de statut visuellement (ex : barrée ou couleur différente).
- Le statut est sauvegardé en base de données

#### Suppression d’une tâche

##### User story

En tant qu’organisateur, je veux supprimer une tâche existante.

##### Critères d’acceptation

- Bouton “Supprimer” disponible.
- Confirmation avant suppression.
- La tâche disparaît immédiatement de la liste

### Options

#### Activer/Désactiver le partage des photos

##### User story

En tant qu’organisateur, je veux activer ou désactiver le partage des photos de l’événement.

##### Critères d’acceptation

- Présence d’un bouton toggle.
- Sauvegarde immédiate du choix.
- Si désactivé :
  - Les invités ne voient plus l’option photo

#### Activer/Désactiver le plan de table

##### User story

En tant qu’organisateur, je veux activer ou désactiver l’option du plan de table.

##### Critères d’acceptation

- Présence d’un bouton toggle.
- Si désactivé :
  - Le plan n’est plus accessible aux invités
  - Modification enregistrée immédiatement

#### Activer/Désactiver les emails RSVP

##### User story

En tant qu’organisateur, je peux activer ou désactiver l’envoi des emails RSVP.

##### Critères d’acceptation

- Un interrupteur (toggle) “Activer les emails RSVP” est disponible dans les paramètres de l’événement.
- Par défaut, l’option est désactivée (ou activée — à définir selon règle métier).
- Lorsque l’option est activée :
- Les emails RSVP peuvent être envoyés aux invités.
- Lorsque l’option est désactivée :
- Aucun email RSVP ne peut être envoyé.
- Les boutons d’envoi sont désactivés.
- La modification est sauvegardée immédiatement ou via bouton “Enregistrer”.
- Un message de confirmation s’affiche après modification.
- Le paramètre est propre à chaque événement.

#### Paramétrer les RSVP

##### User story

En tant qu’organisateur, je peux paramétrer les RSVP sur une page dédiée.

##### Critères d’acceptation

- Une page dédiée “Paramètres RSVP” est accessible depuis l’événement.
- La page affiche :
  - Statut d’activation
  - Mode d’envoi
  - Paramètres de relance
  - Personnalisation du message
- Les champs sont modifiables uniquement par l’organisateur.
- Les modifications sont enregistrées en base de données.
- Les champs obligatoires sont validés avant sauvegarde.
- Un message de succès ou d’erreur s’affiche.

#### Personnaliser le mail RSVP

##### User story

En tant qu’organisateur, je peux personnaliser l’objet et le contenu du mail.

##### Critères d’acceptation

- L’organisateur peut modifier :
  - L’objet du mail
- Le contenu du mail.
- Les variables sont automatiquement remplacées lors de l’envoi.
- Le système empêche l’enregistrement d’un mail vide.
- Un modèle par défaut est disponible.
- La personnalisation est spécifique à l’événement.

#### Prévisualiser le mail

##### User story

En tant qu’organisateur, je peux prévisualiser le mail avant envoi.

##### Critères d’acceptation

- Un bouton “Prévisualiser” est disponible.
- La prévisualisation affiche :
  - L’objet
  - Le contenu formaté
- Les variables remplacées par des données fictives.
- L’affichage correspond au rendu réel de l’email.
- La prévisualisation ne déclenche aucun envoi.
- Une option “Envoyer un test” peut être disponible (facultatif).

#### Paramétrer les relances automatiques

##### User story

En tant qu’organisateur, je peux définir un nombre de jours avant relance automatique.

##### Critères d’acceptation

- Un paramètre “Activer les relances automatiques” est disponible.
- Un champ numérique permet de définir un délai en jours.
- Le champ accepte uniquement des nombres positifs.
- La valeur minimale autorisée est 1 jour.
- La relance est envoyée uniquement aux invités :
  - N’ayant pas répondu
  - Ayant le statut “En attente”
- La relance ne doit pas être envoyée plus d’une fois par cycle défini.
- L’envoi est journalisé.

#### Choisir le mode d’envoi

##### User story

En tant qu’organisateur, je peux choisir le mode d’envoi (email et/ou SMS).

##### Critères d’acceptation

- L’organisateur peut sélectionner :
  - Email
  - SMS
  - Email + SMS
- Si SMS est sélectionné :
- Le numéro de téléphone est obligatoire.
- Le format du numéro est validé.
- Si email est sélectionné :
- Une adresse email valide est requise.
- Le système empêche l’envoi si aucune méthode valide n’est disponible.
- Le choix est enregistré par événement.

#### Envoyer un RSVP ou relance individuelle

##### User story

En tant qu’organisateur, je peux envoyer un RSVP ou une relance à une seule personne.

##### Critères d’acceptation

- Depuis la liste des invités, un bouton “Envoyer RSVP” ou “Relancer” est disponible.
- L’envoi peut être effectué pour un seul invité.
- Une confirmation est demandée avant envoi.
- L’invité reçoit uniquement le message correspondant à son statut.
- L’action est enregistrée dans l’historique.
- L’organisateur reçoit un message de confirmation.

#### Relance automatique X jours avant l’événement

##### User story

En tant qu’organisateur, je peux configurer une relance automatique X jours avant l’événement.

##### Critères d’acceptation

- L’organisateur peut définir un nombre de jours avant la date de l’événement.
- Le système déclenche automatiquement la relance à J-X.
- La relance est envoyée uniquement aux invités :
  - N’ayant pas répondu
  - Toujours actifs
- Le système vérifie que la date configurée est valide (pas négative).
- L’envoi est automatisé via tâche planifiée (cron/job scheduler).
- Un log est généré pour chaque envoi.

#### Refus automatique des non-répondants

##### User story

En tant qu’organisateur, je peux définir qu’un invité n’ayant pas répondu X jours avant l’événement soit marqué “Refusé”.

##### Critères d’acceptation

- Paramètre activable/désactivable.
- Champ de délai en jours.
- Mise à jour automatique du statut.
- Historique des changements conservé

## Partie technique

### Événement

#### Création d’un événement

Permettre à un organisateur authentifié de créer un nouvel événement sur la plateforme.

##### Règles métier

- Seul un utilisateur avec le rôle ORGANIZER peut créer un événement
- Le titre est obligatoire (minimum 3 caractères)
- La date de l'événement doit être postérieure à la date actuelle
- L'organizerId est automatiquement assigné à l'utilisateur connecté à la création

##### API

- `POST /api/events`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Titre obligatoire (min 3 caractères)
- Date > date actuelle

##### Tests

- 401 si non connecté
- 403 si rôle différent de ORGANIZER
- 400 si titre absent ou trop court
- 400 si date passée
- 201 + événement créé avec organizerId correctement assigné
- L'événement apparaît dans la liste des événements de l'organisateur

#### Modification d’un événement

Permettre à l'organisateur propriétaire de mettre à jour les informations d'un événement existant.

##### Règles métier

- Seul l'organisateur propriétaire de l'événement peut le modifier
- Le titre reste obligatoire après modification
- La date modifiée doit rester postérieure à la date actuelle

##### API

- `PUT /api/events/{eventId}`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'utilisateur connecté
- Titre obligatoire (min 3 caractères)
- Date > date actuelle

##### Tests

- 401 si non connecté
- 403 si pas propriétaire de l'événement
- 404 si événement inexistant
- 400 si titre absent ou date invalide
- 200 + mise à jour correcte des données

#### Suppression d’un événement

Permettre à l'organisateur de supprimer définitivement un événement et toutes ses données associées.

##### Règles métier

- Soft delete : le statut de l'événement passe à CANCELLED
- La suppression entraîne la désactivation en cascade de : invités, plan de salle, programmation, tâches
- Seul l'organisateur propriétaire peut effectuer cette action

##### API

- `DELETE /api/events/{eventId}`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'utilisateur connecté

##### Tests

- 401 si non connecté
- 403 si non propriétaire
- 404 si événement inexistant
- 200 + statut = CANCELLED
- Données liées (invités, plan, programmation, tâches) désactivées en base

### Invités

#### Ajouter un invité

Permettre à l'organisateur de constituer sa liste d'invités pour un événement.

##### API

- `POST /api/events/{eventId}/guests`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Email OU téléphone obligatoire
- Format email valide si fourni
- Format téléphone valide si fourni

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si événement inexistant
- 400 si email ET téléphone absents
- 409 si invité déjà présent (email ou téléphone en doublon)
- 201 + invité ajouté et visible dans la liste

#### Modifier un invité

Permettre à l'organisateur de mettre à jour les informations d'un invité existant.

##### Règles métier

- L'email OU le téléphone doit rester renseigné après modification
- Seul l'organisateur propriétaire peut modifier un invité

##### API

- `PUT /api/events/{eventId}/guests/{guestId}`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Email OU téléphone obligatoire après modification

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si invité ou événement inexistant
- 400 si email ET téléphone retirés
- 200 + modification correcte enregistrée

#### Supprimer un invité

Permettre à l'organisateur de retirer un ou plusieurs invités de la liste.

##### Règles métier

- La suppression est définitive (hard delete ou soft delete selon règle métier à définir)
- La suppression multiple est possible
- Seul l'organisateur propriétaire peut supprimer un invité

##### API

- `DELETE /api/events/{eventId}/guests/{guestId}`
- `Suppression multiple : DELETE /api/events/{eventId}/guests + body { guestIds: [...] }`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Invité lié à l'événement

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si invité ou événement inexistant
- 200 + invité(s) supprimé(s) de la liste

#### Envoyer une demande de RSVP par email

Permettre à l'organisateur d'envoyer une invitation RSVP aux invités par email et/ou SMS.

##### Règles métier

- L'envoi nécessite qu'au moins un invité soit présent dans la liste
- L'organisateur choisit le canal : email, SMS, ou les deux
- Si SMS sélectionné : numéro de téléphone obligatoire pour chaque invité ciblé
- Si email sélectionné : adresse email obligatoire pour chaque invité ciblé
- Le statut RSVP de chaque invité est initialisé à EN_ATTENTE
- L'envoi est bloqué si le mode RSVP est désactivé dans les options de l'événement

##### API

- `POST /api/events/{eventId}/guests/rsvp`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Liste d'invités non vide
- Mode d'envoi valide (email et/ou SMS)
- Données de contact cohérentes avec le canal choisi

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si événement inexistant
- 400 si liste vide ou canal invalide
- 400 si RSVP désactivé dans les options
- 200 + RSVP envoyés + statuts initialisés à EN_ATTENTE

#### Voir les invités

Permettre à l'organisateur de consulter la liste complète des invités d'un événement avec leur statut RSVP.

##### API

- `GET /api/events/{eventId}/guests`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si événement inexistant
- 200 + liste paginée des invités avec statuts RSVP

#### Répondre à un RSVP (invité)

Permettre à un invité de confirmer ou décliner sa participation via le lien reçu.

##### Règles métier

- L'invité accède via un lien sécurisé et tokenisé (pas de compte requis)
- Le token est à usage unique et expire après un délai défini
- Statuts possibles : ACCEPTE, REFUSE, EN_ATTENTE
- Le statut est mis à jour en temps réel en base

##### API

- `POST /api/events/{eventId}/guests/{guestId}/rsvp/respond`

##### Validations

- Token valide et non expiré
- Invité lié à l'événement
- Statut fourni parmi les valeurs autorisées

##### Tests

- 400 si token invalide ou expiré
- 404 si invité ou événement inexistant
- 400 si statut invalide
- 200 + statut RSVP mis à jour en temps réel

### Plan de salle

#### Gestion de la salle

Permettre à l'organisateur de modéliser l'espace de l'événement pour créer un plan de table.

##### Règles métier

- Un seul plan de salle par événement
- L'organisateur définit les dimensions et le nombre d'étages
- Le plan est sauvegardé et peut être modifié ultérieurement

##### API

- `POST /api/events/{eventId}/room`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Dimensions obligatoires (largeur, longueur)
- Nombre d'étages ≥ 1

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si événement inexistant
- 409 si plan déjà existant pour cet événement
- 400 si dimensions manquantes ou invalides
- 201 + plan créé et sauvegardé

#### Modification de la salle

Permettre à l'organisateur de mettre à jour le plan de salle existant.

##### Règles métier

- Seul l'organisateur propriétaire peut modifier le plan
- La modification des tables (ajout, forme, capacité, positionnement) est incluse
- Les tables respectent la capacité maximale définie

##### API

- `PUT /api/events/{eventId}/room`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Plan existant pour l'événement
- Capacité des tables ≥ 1

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si plan ou événement inexistant
- 400 si capacité invalide
- 200 + plan mis à jour

#### Visualisation du plan de table (invité)

Permettre à un invité de consulter le plan de salle de l'événement en lecture seule.

##### Règles métier

- Accès en lecture seule uniquement
- Accessible uniquement si l'option "plan de table" est activée par l'organisateur
- Le clic sur une table affiche la liste des invités assignés

##### API

- `GET /api/events/{eventId}/room`

##### Validations

- Invité lié à l'événement (via token ou session)
- Option plan de table activée

##### Tests

- 401 si accès non autorisé
- 403 si option plan désactivée
- 404 si événement ou plan inexistant
- 200 + données du plan retournées en lecture seule

### Programmation

#### Gestion de la programmation

##### API

- `POST /api/events/{eventId}/programmation`

#### Visualisation de la programmation (invité)

##### API

- `GET /api/events/{eventId}/programmation`

### Liste des tâches

#### Consultation des tâches

##### API

- `GET /api/events/{eventId}/tasks`

#### Ajout d’une tâche

Permettre à l'organisateur de créer une tâche à réaliser pour l'événement.

##### Règles métier

- Le titre est obligatoire
- La description et la date d'échéance sont optionnelles
- La tâche est créée avec le statut EN_COURS

##### API

- `POST /api/events/{eventId}/tasks`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Titre obligatoire

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si événement inexistant
- 400 si titre absent
- 201 + tâche créée avec statut EN_COURS

#### Modification d’une tâche

Permettre à l'organisateur de mettre à jour les informations d'une tâche existante.

##### API

- `PUT /api/events/{eventId}/tasks/{taskId}`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Tâche appartenant à l'événement de l'organisateur
- Titre obligatoire

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si tâche ou événement inexistant
- 400 si titre absent
- 200 + tâche mise à jour immédiatement

#### Validation d’une tâche

- Permettre à l'organisateur de marquer une tâche comme terminée.

##### Règles métier

- Le statut de la tâche passe à TERMINEE
- Le changement de statut est sauvegardé en base
- La tâche est visuellement distinguée des tâches en cours

##### API

- `PUT /api/events/{eventId}/tasks/{taskId} avec { status: "TERMINEE" }`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Tâche appartenant à l'événement de l'organisateur

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si tâche inexistante
- 200 + statut = TERMINEE enregistré en base

#### Suppression d’une tâche

Permettre à l'organisateur de supprimer définitivement une tâche.

##### API

- `DELETE /api/events/{eventId}/tasks/{taskId}`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Tâche appartenant à l'événement de l'organisateur

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si tâche inexistante
- 200 + tâche supprimée et disparaît immédiatement de la liste

### Options de l’événement

#### Fonctionnalités

Permettre à l'organisateur de configurer les options de l'événement : partage de photos, plan de table, RSVP, relances automatiques, mode d'envoi et contenu des messages.

##### Règles métier

- Chaque paramètre est propre à l'événement
- Les modifications sont sauvegardées immédiatement ou via bouton "Enregistrer"
- Si partage de photos désactivées : les invités ne voient plus l'option photo
- Si plan de table désactivé : le plan n'est plus accessible aux invités
- Si RSVP désactivé : aucun email/SMS RSVP ne peut être envoyé
- La relance automatique s'envoie uniquement aux invités au statut EN_ATTENTE
- La relance ne peut pas être envoyée plus d'une fois par cycle défini
- Le délai de relance doit être un entier positif ≥ 1
- Si SMS sélectionné : numéro de téléphone obligatoire par invité
- Si email sélectionné : adresse email obligatoire par invité
- Le refus automatique des non-répondants est activable/désactivable avec un délai en jours

##### API

- `PUT /api/events/{eventId}/settings`

##### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- rsvpReminderDelayDays : entier ≥ 1 si relance activée
- rsvpAutoRefuseDays : entier ≥ 1 si refus automatique activé
- rsvpMailBody : non vide si RSVP activé
- Mode d'envoi parmi : EMAIL, SMS, EMAIL_SMS

##### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si événement inexistant
- 400 si délai de relance invalide (≤ 0 ou non numérique)
- 400 si corps du mail vide alors que RSVP activé
- 400 si mode d'envoi invalide
- 200 + paramètres mis à jour et persistés en base
- Désactivation photos → option photo masquée aux invités
- Désactivation plan → plan inaccessible aux invités
- Désactivation RSVP → boutons d'envoi désactivés
