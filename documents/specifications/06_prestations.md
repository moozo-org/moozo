# Prestations

## Partie fonctionnelle

### Ajout de prestation

#### User story

En tant que prestataire connecté et validé, je peux créer une nouvelle prestation afin de proposer mes services aux utilisateurs.

#### Critères d’acceptation

- **Given** le prestataire est connecté
- **And** son compte est validé
- **And** son compte n’est pas suspendu
- **When** il accède au formulaire de création
- **Then** il peut créer une prestation
- **When** il soumet le formulaire
- **Then** le titre et la description sont obligatoires
- **When** la prestation est créée
- **Then** son statut devient automatiquement EN_ATTENTE_VALIDATION
- **Given** une prestation en EN_ATTENTE_VALIDATION
- **Then** elle n’est pas visible publiquement

### Modification de prestation

#### User story

En tant que prestataire, je peux modifier une prestation existante afin de mettre à jour mes informations.

#### Critères d’acceptation

- **Given** la prestation existe
- **And** elle n’est pas SUPPRIMEE
- **When** le prestataire modifie les informations
- **Then** les modifications sont enregistrées
- **Given** une prestation au statut VALIDEE
- **When** elle est modifiée
- **Then** son statut repasse automatiquement à EN_ATTENTE_VALIDATION
- Une prestation SUPPRIMEE ne peut pas être modifiée

### Suppression de prestation

#### User story

En tant que prestataire, je peux supprimer une prestation afin qu’elle ne soit plus visible publiquement.

#### Critères d’acceptation

- **When** le prestataire supprime la prestation
- **Then** son statut devient SUPPRIMEE
- Une prestation SUPPRIMEE n’est plus visible publiquement
- Les données restent conservées en base

### Ajout d’une prestation à un événement

#### User story

En tant que prestataire, je peux associer une prestation validée à un événement afin de proposer mes services dans le cadre de cet événement.

#### Critères d’acceptation

- La prestation doit être au statut VALIDEE
- L’événement doit exister
- Une prestation peut être liée à plusieurs événements
- L’association est gérée via une table pivot event_prestation

### Mise en pause d’une prestation

#### User story

En tant que prestataire, je peux mettre en pause temporairement une prestation afin de la rendre indisponible sans la supprimer.

#### Critères d’acceptation

- **When** le prestataire met en pause la prestation
- **Then** son statut devient EN_PAUSE
- Une prestation EN_PAUSE n’est pas visible publiquement
- **When** le prestataire réactive la prestation
- **Then** elle redevient VALIDEE
- **And** elle ne repasse pas par une validation administrative

### Accepter / refuser une demande de prestation

#### Notification d’une demande

##### User story

En tant que prestataire, je reçois une notification lorsqu’un client effectue une demande de prestation afin de pouvoir y répondre rapidement.

##### Critères d’acceptation

- Une demande créée prend le statut EN_ATTENTE
- Le prestataire reçoit une notification

#### Accepter une demande

##### User story

En tant que prestataire, je peux accepter une demande de prestation afin de confirmer la réalisation du service.

##### Critères d’acceptation

- **When** le prestataire accepte la demande
- **Then** son statut devient ACCEPTEE

#### Refuser une demande

##### User story

En tant que prestataire, je peux refuser une demande de prestation afin de décliner la demande si nécessaire.

##### Critères d’acceptation

- **When** le prestataire refuse la demande
- **Then** son statut devient REFUSEE
- **And** il peut ajouter un motif facultatif

## Partie technique

### Ajout de prestation

#### Description

Permet à un prestataire authentifié de créer une nouvelle prestation.

#### Acteur

- Prestataire connecté (rôle : PROVIDER)

#### Préconditions

- L’utilisateur est connecté
- Son compte est validé par l’administration
- Son statut n’est pas suspendu

#### Données à saisir

- Titre (obligatoire)
- Description (obligatoire)
- Catégorie
- Prix
- Localisation
- Images (optionnel)
- Disponibilités
- Conditions particulières

#### Règles métier

- La prestation est créée avec le statut : EN_ATTENTE_VALIDATION
- Elle n’est pas visible publiquement tant qu’elle n’est pas validée

#### Statuts possibles d’une prestation

- BROUILLON
- EN_ATTENTE_VALIDATION
- VALIDEE
- REFUSEE
- SUSPENDUE
- SUPPRIMEE
- EN_PAUSE

### Modification de prestation

#### Description

Permet au prestataire de modifier une prestation existante.

#### Règles métier

- Si la prestation est VALIDEE, toute modification repasse son statut à EN_ATTENTE_VALIDATION
- Impossible de modifier une prestation SUPPRIMEE

### Suppression de prestation

#### Description

Suppression logique (soft delete)

#### Règles métier

- Change le statut à SUPPRIMEE
- Non visible publiquement
- Historique conservé en base

### Ajout d’une prestation à un événement

#### Description

Permet d’associer une prestation validée à un événement.

#### Préconditions

- Prestation VALIDEE
- Événement existant

#### Règles métier

- Une prestation peut être liée à plusieurs événements
- Table pivot recommandée : event_prestation

### Mise en pause d’une prestation

#### Description

Permet au prestataire de désactiver temporairement sa prestation.

#### Règles métier

- Statut → EN_PAUSE
- Invisible publiquement
- Peut être réactivée sans repasser par validation admin

### Accepter / refuser une demande de prestation

Nouvel objet : DEMANDE_PRESTATION

#### Statuts possibles d’une demande

- EN_ATTENTE
- ACCEPTEE
- REFUSEE
- ANNULEE

#### Règles métier

- Le prestataire reçoit une notification
- En cas de refus → possibilité d’ajouter un motif facultatif
