# Compte Rendu de Réunion

**Date :** 23 octobre 2026
**Heure :** 15h
**Participants :** Grégoire, Mehdi, Pierre-Alexis, Paul, Kesavan, Serge (arrivé en cours de réunion)
**Absent :** Aucun

---

## Objectif de la réunion

Clarifier le fonctionnement de ClickUp (qui remplace Jira) : vérifier que chacun a les accès nécessaires, présenter le Sprint 2, expliquer l'automatisation avec GitHub et caler le suivi jusqu'à la keynote.

---

## Points abordés

### Avancement par membre

- **Mehdi** : Ses tickets repris de Jira ne sont pas à jour ; il doit les corriger dans ClickUp pour le Sprint 2. Trouve l'automatisation avec GitHub très bien faite, meilleure que Jira.
- **Pierre-Alexis** : Pas de blocage ni de question sur les accès. A confirmé que tout est clair à la fin de la réunion.
- **Serge** : Pas de blocage ni de question sur les accès. A confirmé que tout est clair à la fin de la réunion.
- **Grégoire** : A présenté ClickUp et le Sprint 2, mis en place les automatisations avec GitHub et envoyé à Lucas les documents du Sprint 1.
- **Paul** : Pas de point d'avancement dans cette réunion. Aucun problème d'accès. Trouve ClickUp bien plus agréable que Jira, proche de Notion et plus orienté tâches.
- **Kesavan** : Pas de problème d'accès. A relevé que les dates s'affichent au format mois/jour/année et qu'il ne parvient pas à le modifier. A demandé les dates des follow-up et si des documents devaient être déposés dans ClickUp.

### Accès

- Tous les membres ont accès aux repos (infra, IA, mobile, back, web) et à ClickUp.
- Aucun accès manquant n'a été remonté.
- Lucas et Antoine n'ont pas encore accès à ClickUp ; Grégoire doit leur écrire cet après-midi. Ils recevront de toute façon le PLD à la fin.

### Organisation du Sprint 2 dans ClickUp

- Le Sprint 2 se trouve dans la partie « software » et court jusqu'au **7 février**, date de la keynote 1.
- Deux follow-up restent avant la keynote : le PLD n° 2 sera alimenté au follow-up 2, et le PLD final au moment de la keynote.
- Les épiques de Jira ont été reprises, avec un découpage en tâches par bloc, chacun revenant à une personne.
- Les tâches ont été générées à partir de ce qui existait dans Jira, sans vérification complète : chacun doit les relire et les corriger.
- Les dates affichées ont été générées au hasard par IA : chacun doit mettre les vraies dates.
- Chacun renseigne le temps réellement passé (saisie directe ou suivi de temps pendant la tâche), même s'il diffère de l'estimation, pour montrer le suivi à Lucas et Antoine.
- Si une personne manque de tâches, elle en recrée ; si elle en a trop, elle le dit rapidement. Le fonctionnement reste agile et modulable, tant que cela est expliqué.

### Automatisation GitHub ↔ ClickUp

- ClickUp est relié à GitHub. Pour que l'automatisation fonctionne, il faut passer par l'intégration GitHub de la tâche (panneau de droite) et utiliser « Checkout / Create branch » avec le bon nom de branche.
- Le statut de la tâche évolue ensuite automatiquement :
  - à la création de la branche ;
  - à l'ouverture d'une PR vers `develop` (une review est demandée) ;
  - à l'approbation ou à une demande de modification / un commentaire ;
  - à la fermeture de la tâche (« complete ») une fois la PR mergée.
- Quand une review est demandée, une tâche de review est créée automatiquement dans la liste « review », avec le lien vers la PR.
- Contrainte reconnue : il faut copier-coller le nom de branche, ce qui est un peu pénible, mais on reste ensuite sur la même branche.
- Grégoire a testé l'ensemble ; en cas de bug, il ajuste les fichiers YAML.
- Le PLD sera généré avec Claude à partir de ClickUp ; l'objectif de chacun est de garder ClickUp propre (bonnes dates, bons temps).

### Calendrier des follow-up

- Follow-up 2 prévu le **9 novembre**, puis le **14 décembre** (dates à confirmer : la réservation officielle n'est pas encore faite).
- Grégoire a posté les semaines sur WhatsApp pour que chacun sache quand ses tâches doivent être terminées.
- Il n'y a pas de vision détaillée jusqu'au prochain follow-up : l'important est d'avancer et de ne pas arriver à un follow-up sans rien avoir fait.

### Fréquence des sprints et des points d'équipe

- Un seul sprint long (jusqu'en février) plutôt qu'un sprint par semaine : le rythme est trop rapide avec trois projets en parallèle et l'alternance, et il serait trop difficile de suivre les tâches.
- Paul est d'accord : on ne peut pas travailler toutes les semaines sur les mêmes projets.
- À la place, un point de 15 à 30 minutes maximum toutes les deux semaines, avant les follow-up, pour se mettre à jour ; l'équipe reste joignable sur les messages entre-temps.

### Documents

- ClickUp sert uniquement au suivi, sans dépôt de documents.
- Les documents des follow-up restent au format Word, dans le dossier partagé.

---

## Décisions prises

- ClickUp remplace Jira pour le suivi du projet (backlog, sprints, tickets).
- Un seul Sprint 2 couvre la période jusqu'au 7 février (keynote 1), au lieu de sprints hebdomadaires.
- Point d'équipe de 15 à 30 minutes toutes les deux semaines avant les follow-up.
- Les tâches sont liées à GitHub via « Checkout / Create branch » ; les statuts sont automatisés.
- Chacun corrige ses tâches, ses dates et ses temps réels dans ClickUp.
- Les documents de suivi restent en Word, sans dépôt dans ClickUp.

---

## Répartition des actions

- **Mehdi :** Mettre à jour ses tâches du Sprint 2 dans ClickUp (reprises de Jira, encore incorrectes) et renseigner les vraies dates et temps.

- **Pierre-Alexis :** Relire ses tâches du Sprint 2, corriger les dates et renseigner les temps réels ; utiliser « Create branch » depuis ClickUp.

- **Kesavan :** Relire ses tâches du Sprint 2, corriger les dates et renseigner les temps réels ; utiliser « Create branch » depuis ClickUp.

- **Serge :** Relire ses tâches du Sprint 2, corriger les dates et renseigner les temps réels ; utiliser « Create branch » depuis ClickUp.

- **Paul :** Relire ses tâches du Sprint 2, corriger les dates et renseigner les temps réels ; utiliser « Create branch » depuis ClickUp.

- **Grégoire :** Écrire à Lucas et Antoine cet après-midi pour leur donner accès à ClickUp ; vérifier le format des dates remonté par Kesavan ; corriger les YAML en cas de bug signalé ; communiquer les vraies dates des follow-up une fois connues ; générer le PLD.

- **Toute l'équipe :** Remonter rapidement tout bug de l'automatisation, tout manque ou excès de tâches, et ne pas arriver à un follow-up sans avoir avancé.

---

## Prochaines étapes

- Envoi des accès à Lucas et Antoine cet après-midi.
- Follow-up 2 prévu le 9 novembre, puis follow-up le 14 décembre (dates à confirmer).
- Points d'équipe de 15 à 30 minutes toutes les deux semaines avant les follow-up.
- Keynote 1 et fin du Sprint 2 le 7 février, avec le PLD final.

---

**Fin de réunion**
