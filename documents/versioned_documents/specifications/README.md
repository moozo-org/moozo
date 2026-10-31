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
  wbs/               un diagramme Mermaid du WBS par domaine (source)
  assets/            couverture d'origine (v1.0)
  scripts/           mise en page des PDF du WBS
  Makefile           make pdf VERSION=x.y  /  make wbs
  pdf/               versions figées
    wbs/             un PDF d'une page par domaine du WBS (généré)
    specifications_v0.0.pdf
    specifications_v0.1.pdf
    specifications_v0.2.pdf
    specifications_v0.3.pdf
    specifications_v1.0.pdf
```

## Versions

| Version | Fichier | Remarque |
|---|---|---|
| v0.0 | [pdf/specifications_v0.0.pdf](pdf/specifications_v0.0.pdf) | fichier vide dans le dépôt |
| v0.1 | [pdf/specifications_v0.1.pdf](pdf/specifications_v0.1.pdf) | |
| v0.2 | [pdf/specifications_v0.2.pdf](pdf/specifications_v0.2.pdf) | |
| v0.3 | [pdf/specifications_v0.3.pdf](pdf/specifications_v0.3.pdf) | |
| v1.0 | [pdf/specifications_v1.0.pdf](pdf/specifications_v1.0.pdf) | contenu repris dans les fichiers Markdown de ce dossier |

Les fichiers Markdown reprennent le contenu de la v1.0 sans modification de fond.

### Publier une nouvelle version

Prérequis : Docker, rien d'autre. Sans Docker, `brew install pandoc typst` et Node (pour les diagrammes Mermaid) permettent de lancer `make pdf VERSION=1.1` depuis ce dossier.

1. Mettre à jour les fichiers Markdown.
2. Générer le PDF, depuis n'importe quel dossier : `documents/versioned_documents/build-pdf.sh specifications 1.1`. Le fichier est créé dans `pdf/specifications_v1.1.pdf`.
3. Poser un tag git `specifications-v1.1`.
4. Ne jamais modifier un PDF existant : `make` refuse d'écraser une version déjà publiée, une correction donne une nouvelle version.

### WBS par domaine

Les diagrammes du WBS sont dans `wbs/` (un fichier Markdown Mermaid par domaine, lisible directement sur GitHub). Pour regénérer les PDF d'une page liés depuis `00_contexte.md` : `documents/versioned_documents/build-pdf.sh specifications wbs`. Ils sont versionnés dans `pdf/wbs/` pour que les liens fonctionnent. Dans le PDF complet, ces liens ne sont pas cliquables.

La couverture (version, date, auteurs) est dans `../scripts/cover.typ.in`, la mise en page dans `../scripts/style.typ.in`. Ces fichiers, `../doc.mk`, `../Dockerfile` et `../build-pdf.sh` sont partagés avec le plan qualité.

## Conventions des fichiers

- Un fichier par domaine : `# Domaine`, puis `## Partie fonctionnelle` et `## Partie technique`.
- Un domaine regroupé en sous-parties (Événements, Administration, Messagerie, Photos) a un niveau de titre en plus : sous-partie, fonctionnalité, puis rubrique.
- Rubriques fonctionnelles : `User story`, `Critères d'acceptation`. Rubriques techniques : `Règles métier`, `API`, `Validations`, `Tests`.
- Les titres sont écrits en minuscules avec une majuscule initiale, sans point final. Le contenu des paragraphes reprend la v1.0 sans modification.

## Points à clarifier dans la v1.0

Relevés pendant la conversion, volontairement laissés tels quels dans les fichiers de domaine.

- `02_evenements.md`, « Voir les invités » : les parties User story et Critères d'acceptation sont vides.
- `01_utilisateur.md`, « Suppression du compte » : la user story est celle de la vérification d'identité de l'invité (copie).
- `03_paiements.md`, « Gérer les litiges » : la user story est celle du remboursement (copie).
- `01_utilisateur.md`, « Inscription » : aucun champ ne permet de choisir entre organisateur et prestataire, et le parcours d'inscription d'un prestataire (demande, documents, validation par l'administrateur) n'est pas décrit.
- Le rôle des prestataires s'appelle `PRESTATAIRE` dans la spec technique : à confirmer avec le backend.
- `08_pilotage.md` : le planning renvoie vers Jira et la matrice des risques vers un classeur Excel externe.

## Structure d'une spec technique

Chaque fonctionnalité de la partie technique suit le même plan : objectif, règles métier, API, validations, tests. Le schéma de base de données est prévu dans un document séparé.
