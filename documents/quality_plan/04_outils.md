# Outils

## Git / Github

Utilisation de Git et GitHub pour la gestion des versions du code et l’organisation des différents projets.

## ClickUp

ClickUp est utilisé pour la gestion des tickets, des user stories, des sprints et du suivi de l’avancement des tâches. Les sprints y sont planifiés et suivis. Le planning (Gantt) et le PLD sont mis à jour à chaque follow-up.

ClickUp remplace Jira, voir la [décision technique 02](../deliverables_register/technical_decisions/decision_02_org-software.md).

## Documentation (dépôt GitHub)

La documentation (cahiers des charges, rapports, plan qualité, suivi, tableaux) est écrite en fichiers Markdown dans le dépôt GitHub, qui est la source unique de vérité. Les modifications passent par une pull request vers `main`, ce qui assure le versioning et la relecture. Les diagrammes sont écrits en Mermaid, et les PDF (ainsi que le WBS et d’autres artefacts) sont générés automatiquement depuis les fichiers Markdown.

OneDrive n’est plus utilisé pour les documents vivants (anciens fichiers Word et Excel), voir la [décision technique 05](../deliverables_register/technical_decisions/decision_05_docs-as-code.md). Le dossier existant reste une archive.

## Google drive

Google Drive sert uniquement au stockage des graphiques faits avec draw.io

## WhatsApp

WhatsApp est utilisé pour la communication rapide entre les membres de l’équipe pour les questions opérationnelles, la coordination ou les informations urgentes.

## Slack

Slack sera utilisé pour intégrer un bot chargé de publier automatiquement des informations liées au dépôt de code ainsi qu’aux environnements de développement et de production (notifications de commits, déploiements, incidents, etc.).

## Figma

Figma est utilisé pour la conception des maquettes, prototypes d’interface et validation des écrans avant la phase de développement. Les designs y sont partagés pour recueillir les retours des parties prenantes.
