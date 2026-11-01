# Plan assurance qualité Moozo

Source de référence du plan qualité. Les fichiers Markdown de ce dossier sont la version vivante : on les modifie directement. Les PDF du dossier `pdf/` sont des photos figées de ces fichiers à une date donnée.

## Sommaire

| Fichier | Contenu |
|---|---|
| [01_organisation.md](01_organisation.md) | Structure organisationnelle (OBS), cartographie des compétences, rôles |
| [02_normes.md](02_normes.md) | Normes Git (branches, commits) et de code (Go, Python, React) |
| [03_methodologie.md](03_methodologie.md) | Méthodologie de travail |
| [04_outils.md](04_outils.md) | Outils du projet (Git, Jira, OneDrive, Slack, Figma...) |
| [05_tests.md](05_tests.md) | Stratégie de tests, critères de qualité et de couverture, workflow |
| [06_onboarding.md](06_onboarding.md) | Documentation d'onboarding (README, CONTRIBUTING) |
| [07_choix_technologiques.md](07_choix_technologiques.md) | Choix technologiques, infrastructure et architecture |

## Structure

```
quality_plan/
  README.md
  01_organisation.md ... 07_choix_technologiques.md
  assets/            images (schéma Pact)
  pdf/               versions figées
    quality_plan_v0.0.pdf ... quality_plan_v1.0.pdf
```

## Versions

| Version | Fichier | Remarque |
|---|---|---|
| v0.0 | [pdf/quality_plan_v0.0.pdf](pdf/quality_plan_v0.0.pdf) | fichier vide dans le dépôt |
| v0.1 | [pdf/quality_plan_v0.1.pdf](pdf/quality_plan_v0.1.pdf) | |
| v0.2 | [pdf/quality_plan_v0.2.pdf](pdf/quality_plan_v0.2.pdf) | |
| v0.3 | [pdf/quality_plan_v0.3.pdf](pdf/quality_plan_v0.3.pdf) | |
| v1.0 | [pdf/quality_plan_v1.0.pdf](pdf/quality_plan_v1.0.pdf) | contenu repris dans les fichiers Markdown de ce dossier |

### Publier une nouvelle version

1. Mettre à jour les fichiers Markdown.
2. Générer le PDF et le déposer dans `pdf/` sous le nom `quality_plan_vX.Y.pdf`. L'outillage de génération (Docker, pandoc, typst) n'est pas versionné.
3. Poser un tag git `quality-plan-vX.Y`.
4. Ne jamais modifier un PDF existant : une correction donne une nouvelle version.

## Conventions

- Un fichier par grande partie, numéroté dans l'ordre du document, avec un seul titre de niveau 1 par fichier.
- Le schéma d'architecture technique n'est écrit qu'une fois, dans `../diagrams/technical_architecture.md`. Le plan qualité l'appelle avec le repère `<!-- include: ../diagrams/technical_architecture.md -->`, remplacé par le diagramme à la génération du PDF. Les autres schémas (organigramme, pipeline CI/CD) sont en Mermaid dans les fichiers, le schéma Pact est une image de `assets/`.
- Le contenu reprend la v1.0 sans modification de fond.
