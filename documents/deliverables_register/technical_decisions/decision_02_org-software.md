# Décision technique 02 — Gestion de projet : passage de Jira à ClickUp

**Date :** 16 octobre 2026
**Statut :** Acceptée
**Décideurs :** Équipe Moozo

> **En bref :** Jira, retenu dans le Plan Qualité v1.0, est remplacé par **ClickUp** pour la gestion des tickets, des sprints et du suivi. Raisons : Jira est trop complexe pour notre usage, et ClickUp s'intègre à Claude via MCP.

---

## Contexte

Le Plan Qualité v1.0 retient **Jira** pour la gestion des tickets, des user stories et des statistiques de sprint. Le lien du planning (Gantt) des spécifications v1.0 et la keynote 1 y font également référence.

Depuis le sprint 1, nous constatons que Jira est lourd à prendre en main et à maintenir à jour :

- le tableau n'apparaît qu'une fois un sprint lancé, ce qui a désorienté plusieurs membres ;
- des tickets sont rangés au mauvais niveau (par exemple sous le sprint sans Story parente) ;
- le report du travail dans l'outil prend du retard, ce qui fausse le suivi et complique la production du PLD.

## Décision

Le suivi du projet (backlog, sprints, tickets, assignations, estimations) est fait dans **ClickUp**. Jira n'est plus utilisé pour les nouveaux tickets.

## Justification

- **Simplicité :** Jira est trop complexe pour une équipe de six personnes. ClickUp est plus simple à prendre en main et à garder à jour, ce qui facilite le renseignement des tickets au fil de l'eau.
- **Intégration avec Claude (MCP) :** ClickUp dispose d'un connecteur MCP. Claude peut consulter, créer et mettre à jour les tâches directement, et s'en servir pour préparer les comptes rendus de réunion et les points d'avancement.
- **Un seul endroit pour le suivi :** tickets, sprints et informations d'avancement sont regroupés, ce qui simplifie les exports demandés pour le PLD et les présentations.

## Alternatives considérées

| Option                        | Avantages                                                     | Inconvénients                                                                                     |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| **Rester sur Jira**           | Déjà en place et cité dans le Plan Qualité ; backlog existant | Trop complexe ; mise à jour difficile à tenir ; pas de connecteur MCP utilisé dans notre workflow |
| **Passer à ClickUp** (retenu) | Plus simple ; intégration Claude via MCP                      | Migration du backlog existant ; documents à mettre à jour                                         |

## Conséquences

- Migration du backlog et des tickets Jira existants vers ClickUp.
- Mise à jour des documents qui mentionnent Jira : Plan Qualité v1.0 (méthodologie et outils), spécifications v1.0 (lien du planning / Gantt), keynote 1.
- Lucas Guiard doit être ajouté à ClickUp pour suivre l'avancée (il avait été ajouté à Jira).
- Point de vigilance : vérifier que ClickUp permet d'obtenir les exports par sprint et les indicateurs demandés (nombre de tickets, % du WBS réalisé, % de jours-hommes) pour le PLD.
- Jira est conservé en lecture seule pour l'historique du sprint 1, puis archivé.
