# Photos

## Partie fonctionnelle

### Ajout de photo

#### User story

En tant que guest participant à un évènement, je veux ajouter une photo afin de la partager avec les autres invités.

#### Critères d’acceptation

- Présence d’un bouton "Ajouter une photo".
- Upload possible uniquement si l’évènement est actif.
- Formats acceptés : JPG, PNG, WEBP.
- Message d’erreur si taille maximale dépassée.
- La photo apparaît immédiatement dans la galerie.

### Suppression de photo

#### User story

En tant que participant, je veux supprimer une photo que j’ai ajoutée afin de retirer un contenu.

#### Critères d’acceptation

- Présence d’un bouton "Supprimer" sur mes photos.
- Confirmation avant suppression.
- Un guest ne peut supprimer que ses propres photos.
- L’organisateur peut supprimer n’importe quelle photo.
- La photo disparaît immédiatement après suppression.

### Visualisation des photos

#### User story

En tant que participant à un évènement, je veux voir les photos partagées afin de consulter les souvenirs de l’évènement.

#### Critères d’acceptation

- Affichage uniquement des photos liées à l’évènement.
- Les photos les plus récentes apparaissent en premier.
- Mise en place d’une pagination.
- Présence de filtres :
  - Photos ajoutées par moi
  - Photos où je suis identifié
  - Photos d’un invité spécifique (organisateur uniquement)
- Les photos supprimées ne sont pas visibles.

## Partie technique

### Gestion des photos pendant l’événement

#### Ajout de photo

##### Règles métier

- Le guest doit participer à l'évènement
- Upload autorisé uniquement si event actif
- Taille max
- Formats autorisés: png, webp, jpg

##### API

- `POST /api/guest/events/{eventId}/photos`

##### Validations

- Guest authentifié
- Event existant
- Fichier obligatoire et < a la taille max

##### Tests

- 403 si non participant
- 401 si non connecté
- 404 si event non existante
- Photo créée

#### Suppression de photo

##### Règles métier

- Le guest doit participer à l'évènement
- Le guest peut uniquement supprimer les photos qu’il a upload
- L'organisateur peut n'importe quelle photo de l'évenement
- Upload autorisé uniquement si event actif
- Taille max
- Formats autorisés: png, webp, jpg

##### API

- `DELETE /api/guest/events/{eventId}/photos/{photoId}`

##### Validations

- Guest authentifié
- Event existant
- Propriétaire de la photo ou de l’event

##### Tests

- 403 si non propriétaire ou organisateur
- 404 si photo non existante
- Photo supprimée

#### Visualisation des photos

Photos de tout le monde, de toi et par toi.

##### Règles métier

- Le guest doit participer à l'évènement
- Les photos affichées doivent appartenir à l’évènnement concerné
- L'organisateur peut n'importe quelle photo de l'évenement
- Les photos sont retournées dans l’ordre chronologique, les plus récentes en huat
- Pagination
- Filtres :
  - Uploadés par moi (?filter=mine)
  - Où je suis (reconaissance faciale) (?filter=tagged)
  - D'un guest spécifique (que pour organisateur) (?guestId={guestId})

##### API

- `GET /api/guest/events/{eventId}/photos`

##### Validations

- Guest authentifié
- Event existant
- Paramètres de pagination valide (pas de page non existante)
- Filtre fonctionnel

##### Tests

- 403 si non participant
- 401 si non connecté
- 404 si event non existant
- Retourne uniquement les photos de l’évènement
- Ne retourne pas les photos supprimées
- Trié par date
- Pagination fonctionelle
- Retourne uniquement les photos correspondantes au filtre
