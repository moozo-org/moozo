# Compte Rendu de Réunion

**Date :** 09 octobre 2026
**Heure :** 14:00
**Participants :** Mehdi, Pierre-Alexis, Grégoire, Paul
**Absent :** Serge (problème d'accès à Teams, compte désactivé), Kesavan (arrêt maladie)

---

## Objectif de la réunion

Réunion interne de préparation, juste avant le point de suivi avec Lucas Guiard : passer en revue la présentation, s'aligner sur le périmètre et la date de la V1, vérifier l'état du Jira et poser les règles de fonctionnement de l'équipe (CI, PR, usage de l'IA).

---

## Points abordés

### Avancement par membre

- **Mehdi** : N'a pas encore reporté son travail dans le Jira. A passé la journée et la matinée à organiser l'infra jusqu'à la V1, voire la version finale, ce qui va modifier ses tickets (notamment la prise en compte des risques). Le Jira sera à jour d'ici lundi. Responsable du déploiement dans le fonctionnement de la CI.
- **Pierre-Alexis** : Ses tickets liés à l'IA étaient placés au mauvais endroit dans le Jira (sous le sprint, sans Story parente). Il les a rattachés à une Story pour pouvoir les organiser correctement.
- **Serge** : Pas d'intervention dans cette réunion.
- **Grégoire** : A préparé la présentation destinée à Lucas (PBS, avancement, vision des sprints jusqu'à la V1). Doit relancer le sprint dans le Jira après réorganisation du backlog.
- **Paul** : Authentification basée sur des JWT (login, logout, création de compte) et seeding des données ; reste des points à voir sur les rôles. A montré la CI du back. Il n'a pas de tableau dans le Jira car aucun sprint n'est lancé. Sa documentation contient des points intéressants mais est trop longue : il va la rendre plus concise. Certains tests seront ajoutés dans une prochaine PR.
- **Kesavan** : Pas d'intervention dans cette réunion.

### Périmètre et planning de la V1

- Contenu prévu pour la V1 :
  - authentification basique (login, logout, inscription), d'abord sur mobile et web avec le back ;
  - événements et services : fonctionnalité clé, 2 sprints après le premier, voire 3 (environ 6 semaines) ;
  - espace invités sur le web, a priori plus rapide ;
  - photos IA, menées en parallèle tout du long ;
  - une première architecture permettant une application fonctionnelle, avec CI/CD, environnement de test et déploiement automatique.
- Grégoire a prévu des sprints pour le moment, à ajuster. Il s'agit surtout de donner une vision globale à présenter.
- Gardé pour après la V1 : messagerie, paiements, facturation et intégrations (Stripe, abonnements, business plan), statistiques, exports, génération automatique des tables (seuls le plan et la création par les utilisateurs sont gardés). Le RSVP des invités pourra être ajouté selon l'avancement de la création d'événements.
- Date de la V1 : Grégoire avait indiqué le 1er janvier sans avoir la date en tête. Mehdi pense que la deadline est en février. Après vérification (Epitech, 121 jours), la date est le **7 février**.
- Mehdi estime qu'avec le périmètre réduit, la V1 aurait été possible au 1er janvier, mais qu'un scope plus large aurait été très juste ; Paul rappelle qu'il ne reste que 6 semaines dont 2 en école. Le 7 février convient à tous.
- Le scope de la V1 est volontairement réduit : mieux vaut ajouter si besoin que se retrouver avec des éléments non terminés (Paul, Grégoire).
- Une semaine de cours est prévue du 29 novembre au 4 décembre (première semaine de décembre).
- Des fêtes de fin d'année ont lieu avant la V1 : l'équipe doit s'organiser et se tenir informée des disponibilités.
- Grégoire rappelle l'intervention annoncée d'une avocate sur les questions légales et RGPD (Mehdi n'en avait pas souvenir) ; cela sera confirmé par Lucas lors du point de suivi.

### Jira et suivi

- Pas de tableau visible pour le moment car aucun sprint n'est lancé ; il suffit de vérifier les tickets dans le backlog, puis Grégoire relance le sprint.
- Chacun renseigne sur ses tickets : priorité, points de temps (unité en heures), assignation et timing réel (démarrage et fin). La timeline se génère alors automatiquement et le PLD sera beaucoup plus simple à produire.
- Remplir les tâches au fil de l'eau plutôt que de tout refaire dans 6 semaines.
- Estimation de 35 h pour l'inscription : jugée cohérente (front + back + mobile + tests, avec 4 personnes).
- Les tickets Jira servent de base pour créer les PR et les push, afin de garder une logique de suivi simple.

### CI et règles de PR

- Chaque repo a sa propre CI. Les tests, le build et le lint sont gérés par les membres du repo (ceux qui maîtrisent le code). Le déploiement est géré par les personnes en charge de l'infra (Mehdi).
- Les normes issues des cahiers des charges doivent être mises en place dans les checks de PR, qui bloqueront le merge : normes, build, tests, Docker et approbation d'une personne.
- Question ouverte : comment avoir des normes homogènes sur les 5-6 repos existants ; à discuter après la présentation.

### Usage de l'IA

- Grégoire propose de garder une IA sous contrôle : pour gagner du temps, mais sans produire de documents (MD, etc.) de plusieurs centaines de lignes que personne ne relit. Si l'équipe n'a pas envie de relire après passage de l'IA, c'est qu'il y a un problème.
- Le code ne doit pas être entièrement écrit par l'IA : l'équipe doit connaître et comprendre son application pour pouvoir l'expliquer lors du follow-up ou de la keynote.
- Paul et Mehdi sont d'accord : l'IA produit souvent des documents trop lourds et trop exhaustifs ; il faut rester concis tout en gardant une documentation propre et claire.
- L'équipe a le temps d'apprendre, il n'y a pas d'urgence.

---

## Décisions prises

- La V1 est fixée au 7 février (et non au 1er janvier).
- Le périmètre de la V1 est volontairement réduit (authentification, événements et services, espace invités, photos IA, première architecture avec CI/CD) ; on ajoutera si besoin.
- Messagerie, paiements, facturation, statistiques, exports et génération de tables sont repoussés après la V1 ; RSVP à décider selon l'avancement.
- Organisation de la CI : tests, build et lint par les membres du repo, déploiement par l'infra.
- Les PR doivent passer des checks bloquants (normes, build, tests, Docker) et être approuvées par une personne ; les PR sont liées aux tickets Jira.
- Chacun remplit ses tickets Jira (priorité, points de temps en heures, assignation, timing) au fil de l'eau.
- L'usage de l'IA est autorisé mais encadré : documents concis et code compris par toute l'équipe.

---

## Répartition des actions

- **Mehdi :** Mettre à jour tous ses tickets Jira (infra, risques) d'ici lundi.

- **Pierre-Alexis :** Terminer le rattachement de ses tickets IA à leur Story dans le Jira et renseigner priorité, points de temps et assignation.

- **Kesavan :** Mettre à jour ses tickets Jira (priorité, points de temps, assignation). Action générale à l'équipe, Kesavan n'intervenant pas dans le transcript.

- **Serge :** Mettre à jour ses tickets Jira (priorité, points de temps, assignation). Action générale à l'équipe, Serge n'intervenant pas dans le transcript.

- **Paul :** Rendre sa documentation plus concise, vérifier ses tickets login/register dans le backlog et ajouter les tests restants dans une prochaine PR.

- **Grégoire :** Relancer le sprint dans le Jira après réorganisation du backlog, présenter l'avancement à Lucas, ouvrir la discussion sur les normes homogènes entre repos après la présentation.

---

## Prochaines étapes

- Point de suivi avec Lucas Guiard juste après cette réunion.
- Discussion sur l'homogénéisation des normes et de la CI entre les repos, après la présentation.
- Jira à jour d'ici lundi, puis relance du sprint.
- Organisation de la disponibilité de l'équipe pendant les fêtes de fin d'année.
- Semaine de cours du 29 novembre au 4 décembre.
- Livraison de la V1 le 7 février.

---

**Fin de réunion**
