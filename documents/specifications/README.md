# Cahier des charges Moozo

Source de référence du cahier des charges. Les fichiers Markdown de ce dossier sont la version vivante : on les modifie directement. Les PDF du dossier `pdf/` sont des photos figées de ces fichiers à une date donnée.

## Sommaire

| Fichier | Contenu |
|---|---|
| [00_contexte.md](00_contexte.md) | Contexte, problématique, objectifs, étude de marché, valeur ajoutée, PBS et WBS |
| [01_utilisateur.md](01_utilisateur.md) | Inscription, vérification, connexion, mot de passe oublié, profil, suppression du compte |
| [02_evenements.md](02_evenements.md) | Événements, invités, RSVP, plan de salle, programmation, tâches, options |
| [03_paiements.md](03_paiements.md) | Moyens de paiement, paiement, historique, remboursement, litiges |
| [04_messagerie.md](04_messagerie.md) | Conversations, messages, notifications |
| [05_photos.md](05_photos.md) | Ajout, suppression et visualisation des photos |
| [06_prestations.md](06_prestations.md) | Prestations des prestataires et demandes de prestation |
| [07_administration.md](07_administration.md) | Modération des prestataires, des prestations et des avis, sanctions |
| [08_pilotage.md](08_pilotage.md) | Tableau des ressources, planning, gestion des risques |

Chaque fichier de domaine (01 à 07) contient une partie fonctionnelle (user stories et critères d'acceptation) puis une partie technique (règles métier, API, validations, tests).

## Structure

```
specifications/
  README.md
  00_contexte.md ... 08_pilotage.md
  wbs/               un diagramme Mermaid du WBS par domaine
  pdf/               versions figées
    wbs/             un PDF d'une page par domaine du WBS
    specifications_v0.0.pdf ... specifications_v1.0.pdf
```

## Versions

| Version | Fichier | Remarque |
|---|---|---|
| v0.0 | [pdf/specifications_v0.0.pdf](pdf/specifications_v0.0.pdf) | fichier vide dans le dépôt |
| v0.1 | [pdf/specifications_v0.1.pdf](pdf/specifications_v0.1.pdf) | |
| v0.2 | [pdf/specifications_v0.2.pdf](pdf/specifications_v0.2.pdf) | |
| v0.3 | [pdf/specifications_v0.3.pdf](pdf/specifications_v0.3.pdf) | |
| v1.0 | [pdf/specifications_v1.0.pdf](pdf/specifications_v1.0.pdf) | contenu repris dans les fichiers Markdown de ce dossier |

Les fichiers Markdown reprennent la v1.0, avec les évolutions suivantes : inscription séparée organisateur / prestataire, rôle des prestataires renommé `PROVIDER` (comme `ORGANIZER` et `ADMIN`), lien vers le Gantt ClickUp (v1.2), et correction de trois user stories vides ou copiées par erreur (après la v1.2).

### Publier une nouvelle version

1. Mettre à jour les fichiers Markdown.
2. Générer le PDF et le déposer dans `pdf/` sous le nom `specifications_vX.Y.pdf`. L'outillage de génération (Docker, pandoc, typst) n'est pas versionné.
3. Poser un tag git `specifications-vX.Y`.
4. Ne jamais modifier un PDF existant : une correction donne une nouvelle version.

Les diagrammes du WBS sont dans `wbs/` (un fichier Markdown Mermaid par domaine, lisible directement sur GitHub). Les PDF d'une page liés depuis `00_contexte.md` sont dans `pdf/wbs/`.

## Conventions des fichiers

- Un fichier par domaine : `# Domaine`, puis `## Partie fonctionnelle` et `## Partie technique`.
- Un domaine regroupé en sous-parties (Événements, Administration, Messagerie, Photos) a un niveau de titre en plus : sous-partie, fonctionnalité, puis rubrique.
- Rubriques fonctionnelles : `User story`, `Critères d'acceptation`. Rubriques techniques : `Règles métier`, `API`, `Validations`, `Tests`.
- Les titres sont écrits en minuscules avec une majuscule initiale, sans point final. Le contenu des paragraphes reprend la v1.0, hors évolutions listées dans « Versions ».

## Points à clarifier dans la v1.0

Relevés pendant la conversion de la v1.0. Les user stories vides ou copiées par erreur (« Voir les invités », « Suppression du compte », « Gérer les litiges ») ont été corrigées après la v1.2.

- `01_utilisateur.md`, « Inscription d'un prestataire » (ajoutée depuis la v1.0) : liste des justificatifs officiels, formats et taille, endpoint d'inscription et libellé du lien « Devenir prestataire » à définir.
- `08_pilotage.md` : le planning renvoie vers le Gantt ClickUp et la matrice des risques vers un classeur Excel externe.

## Structure d'une spec technique

Chaque fonctionnalité de la partie technique suit le même plan : objectif, règles métier, API, validations, tests. Le schéma de base de données est prévu dans un document séparé.
