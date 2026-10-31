# Paiements

## Partie fonctionnelle

### Ajouter un moyen de paiement

#### User story

En tant qu’utilisateur, je veux ajouter un moyen de paiement afin de payer des prestations.

#### Critères d’acceptation

- Ajout d’un moyen de paiement dans le profil
- Enregistrement sécurisé du moyen de paiement

### Supprimer un moyen de paiement

#### User story

En tant qu’utilisateur, je veux supprimer un moyen de paiement afin de ne plus l’utiliser sur la plateforme.

#### Critères d’acceptation

- Suppression d’une carte bancaire du profil

### Payer une prestation

#### User story

En tant qu’organisateur, je veux payer une prestation afin de confirmer et régler un service lié à mon événement.

#### Critères d’acceptation

- Sélection d’une prestation à payer depuis l’événement
- Affichage du montant, du prestataire et du détail de la prestation
- Choix du moyen de paiement
- Validation du paiement

### Consulter l’historique des paiements

#### User story

En tant qu’utilisateur, je veux consulter l’historique de mes paiements afin de suivre mes transactions et récupérer mes factures.

#### Critères d’acceptation

- Consultation de la liste de tous les paiements effectués
- Accession au détail d’un paiement avec date, montant, moyen de paiement, prestataire et prestation
- Téléchargement d’une facture

### Rembourser une prestation

#### User story

En tant qu’utilisateur, je veux demander le remboursement d’une prestation afin d’annuler tout ou partie d’un paiement.

#### Critères d’acceptation

- Sélection d’un paiement à rembourser depuis l’historique
- Choix du type de remboursement : total ou partiel
- Confirmation du remboursement

### Gérer les litiges

#### User story

En tant qu’utilisateur, je veux demander le remboursement d’une prestation afin d’annuler tout ou partie d’un paiement.

#### Critères d’acceptation

- Déclaration d’un problème sur un paiement
- Ajout d’un message et de justificatifs
- Suivi du statut du litige jusqu’à résolution

## Partie technique

### Ajouter un moyen de paiement

Permettre à un utilisateur d'enregistrer un moyen de paiement dans son profil.

#### Règles métier

- Les données de carte sont tokenisées via un prestataire de paiement (ex: Stripe)
- Aucune donnée de carte sensible n'est stockée en base
- Un utilisateur peut enregistrer plusieurs moyens de paiement

#### API

- `POST /api/users/me/payment-methods`

#### Validations

- utilisateur authentifié
- token Stripe valide

#### Tests

- 401 si non connecté
- 400 si token invalide
- 201 + moyen de paiement enregistré

### Supprimer un moyen de paiement

#### Objectif

Permettre à un utilisateur de supprimer une carte bancaire de son profil.

#### Règles métier

- Suppression du token côté Stripe et en base
- Impossible de supprimer un moyen de paiement lié à un paiement en cours

#### API

- `DELETE /api/users/me/payment-methods/{paymentMethodId}`

#### Validations

- Utilisateur authentifié
- Moyen de paiement appartient à l'utilisateur

#### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si moyen de paiement inexistant
- 409 si paiement en cours lié
- 200 + supprimé

### Payer une prestation

#### Objectif

Permettre à un organisateur de payer une prestation depuis l'événement.

#### Règles métier

- La prestation doit avoir le statut ACCEPTEE (demande acceptée par le prestataire)
- Le paiement est effectué via le prestataire de paiement (Stripe)
- Un historique du paiement est créé en base
- Le prestataire reçoit une notification après paiement confirmé

#### API

- `POST /api/events/{eventId}/prestations/{prestationId}/pay`

#### Validations

- Utilisateur authentifié
- Rôle = ORGANIZER
- Événement appartenant à l'organisateur
- Prestation au statut ACCEPTEE
- Moyen de paiement valide sélectionné

#### Tests

- 401 si non connecté
- 403 si pas organisateur ou pas propriétaire de l'événement
- 404 si prestation ou événement inexistant
- 400 si prestation non acceptée
- 400 si aucun moyen de paiement
- 201 + paiement enregistré + notification prestataire

### Consulter l’historique des paiements

#### Objectif

Permettre à un utilisateur de consulter tous ses paiements effectués et de télécharger les factures.

#### Règles métier

- Seul l'utilisateur connecté peut consulter son propre historique
- Chaque paiement affiche : date, montant, prestataire, prestation, moyen de paiement
- Une facture PDF est téléchargeable pour chaque paiement

#### API

- `GET /api/users/me/payments`
- `GET /api/users/me/payments/{paymentId}`
- `GET /api/users/me/payments/{paymentId}/invoice`

#### Validations

- utilisateur authentifié

#### Tests

- 401 si non connecté
- 404 si paiement inexistant ou pas propriétaire
- 200 + liste paginée des paiements
- 200 + détail du paiement
- 200 + facture PDF générée

### Rembourser une prestation

#### Objectif

Permettre le remboursement total ou partiel d'un paiement effectué.

#### Règles métier

- Le remboursement est déclenché via l'API Stripe
- Deux types possibles : total ou partiel (avec montant saisi)
- Un remboursement partiel ne peut pas dépasser le montant initial
- Le statut du paiement passe à REFUNDED ou PARTIALLY_REFUNDED
- L'utilisateur et le prestataire sont notifiés

#### API

- `POST /api/users/me/payments/{paymentId}/refund`

#### Validations

- Utilisateur authentifié
- Paiement appartient à l'utilisateur
- Paiement au statut COMPLETED
- Montant du remboursement partiel > 0 et <= montant initial

#### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si paiement inexistant
- 400 si paiement déjà remboursé
- 400 si montant partiel invalide
- 200 + statut REFUNDED ou PARTIALLY_REFUNDED
- notification envoyée à l'utilisateur et au prestataire

### Gérer les litiges

Permettre à un utilisateur de déclarer un problème sur un paiement et d'en suivre la résolution.

#### Règles métier

- Un litige ne peut être ouvert que sur un paiement au statut COMPLETED
- Un seul litige actif par paiement
- L'utilisateur peut joindre un message et des justificatifs
- Le statut du litige évolue : OUVERT → EN_COURS → RESOLU / FERME
- L'équipe admin est notifiée à l'ouverture du litige

#### API

- `POST /api/users/me/payments/{paymentId}/disputes`
- `GET /api/users/me/payments/{paymentId}/disputes/{disputeId}`

#### Validations

- Utilisateur authentifié
- Paiement appartient à l'utilisateur
- Paiement au statut COMPLETED
- Pas de litige déjà ouvert sur ce paiement
- Message obligatoire

#### Tests

- 401 si non connecté
- 403 si pas propriétaire
- 404 si paiement inexistant
- 409 si litige déjà existant
- 400 si message absent
- 201 + litige créé au statut OUVERT
- Notification admin envoyée
