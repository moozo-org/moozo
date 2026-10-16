# Compte Rendu de Réunion

**Date :** 09 octobre 2026
**Heure :** 14:30
**Participants :** Mehdi, Pierre-Alexis, Grégoire, Paul, Lucas Guiard (référent)
**Absent :** Serge (problème d'accès à Teams, compte désactivé), Kesavan (arrêt maladie)

---

## Objectif de la réunion

Point d'avancement du projet Moozo avec Lucas Guiard : bilan du sprint 1, présentation de la vision des prochains sprints et recueil de ses attentes pour le suivi (PLD, indicateurs d'avancement).

---

## Points abordés

### Avancement par membre

- **Mehdi** : Infra redécoupée en 3 phases pour produire les éléments les plus importants en premier.
  - V0 : services minimaux pour que le front et le back communiquent (engagement de livraison au 26 octobre).
  - V1 : prévue en février.
  - Version finale : infra beaucoup plus robuste (pare-feu, applicatif, etc.).
  - Compte Azure déjà créé et régions réglées.
- **Pierre-Alexis** : Travaille sur la feature IA des photos, qui prend plus de temps que prévu. La librairie Python de reconnaissance initialement envisagée est sous licence, donc compliquée à utiliser. Orientation vers OpenCV : recherche en cours, mise en place du microservice Python, tests et prise en main des modèles trouvés.
- **Serge** : A initié le front mobile en Flutter (PR d'initialisation, mise en place des thèmes).
- **Grégoire** : A mis en place le front web (même travail que Serge côté mobile) et l'organisation du projet. A présenté à Lucas le bilan du sprint 1 et la vision des sprints suivants.
- **Paul** : A initialisé le back : CI (lint, tests), architecture, fichiers Docker, MongoDB. Authentification : login, logout et register terminés et en review ; travaille sur la partie utilisateur. Objectif du prochain sprint : terminer tout ce qui est lié à l'authentification.
- **Kesavan** : A travaillé sur l'organisation des accès aux différents services au sein de l'équipe. A réalisé une première analyse de sécurité : vérification des technologies et versions utilisées (dont les systèmes d'exploitation) pour repérer d'éventuelles failles connues. Une première version a été envoyée à l'équipe.

### Bilan du sprint 1 et vision du projet

- Repos initialisés : back, front mobile, front web ; architecture IA en cours de finalisation.
- Maquettes (screens) déjà préparées.
- **V1 prévue le 7 février**, centrée sur les features principales :
  - création d'événements (modification, suppression, services associés) ;
  - espace invités, pour participer à un événement pendant une soirée ;
  - IA des photos, lancée dès le début car c'est un bloc important, complet et complexe, et un élément de mise en avant face aux concurrents.
- Les features non pertinentes pour la V1 sont laissées de côté (messagerie, paiements, etc.) et viendront compléter l'application ensuite.
- La V1 correspondra à un produit déployé en ligne, pas forcément aussi robuste que la version visée pour la fin de l'année prochaine.
- Les gros blocs de features sont découpés en sprints de 2 semaines pour avoir une vision précise régulière et éviter de constater trop tard qu'un sujet n'a pas avancé comme attendu.

### Suivi et reporting (échange avec Lucas)

- Le PLD est produit à chaque sprint. Lucas souhaite une vue par sprint pour voir ceux où l'avancée a été forte et ceux plus calmes.
- Un export des informations du Jira (user stories, charge estimée, sous-tâches, assignations, évolution, timeline) dans un document Word suffit, sans mise en page particulière.
- Pour la prochaine réunion, Lucas souhaite une présentation du même type que celle faite aujourd'hui, avec :
  - le nombre de tickets et le nombre de tickets réalisés ;
  - le pourcentage du WBS réalisé (réellement implémenté) ;
  - le pourcentage de jours-hommes réalisés par rapport à ceux attendus.
- Lucas va consulter le Jira de son côté pour rédiger un commentaire détaillé.

### Informations de Lucas

- Une avocate présentera fin novembre ou début décembre (date exacte à confirmer) une partie sur la légalité et la faisabilité. Point important pour Moozo, qui manipulera des photos d'utilisateurs ; l'équipe peut déjà commencer à y réfléchir.
- Lucas ne note pas de souci particulier et encourage l'équipe à continuer ainsi : l'équipe avance bien.

---

## Décisions prises

- La V1 est fixée au 7 février avec les features principales : création et gestion des événements, espace invités, IA des photos.
- Le reste des features (messagerie, paiements, etc.) est repoussé après la V1.
- Le projet est découpé en sprints de 2 semaines pour un suivi régulier.
- Infra découpée en 3 phases (V0 au 26 octobre, V1 en février, version finale robuste).
- IA des photos : abandon de la librairie Python sous licence, orientation vers OpenCV.
- Lucas est ajouté au Jira pour suivre l'avancée.
- Le suivi du PLD par sprint se fait via un export du Jira (Word), si possible.

---

## Répartition des actions

- **Mehdi :** Livrer la V0 de l'infra (services minimaux front/back) pour le 26 octobre.

- **Pierre-Alexis :** Poursuivre la recherche sur OpenCV, mettre en place le microservice Python, tester et prendre en main les modèles.

- **Kesavan :** Poursuivre l'analyse de sécurité et l'organisation des accès aux services.

- **Serge :** Résoudre son problème d'accès à Teams (compte désactivé) et poursuivre le front mobile Flutter.

- **Paul :** Terminer tout ce qui est lié à l'authentification pour le prochain sprint.

- **Grégoire :** Ajouter Lucas au Jira, se renseigner sur l'export de sprint depuis le Jira, préparer la prochaine présentation (tickets, % WBS, % jours-hommes).

---

## Prochaines étapes

- Livraison de la V0 de l'infra le 26 octobre.
- Prochaine réunion avec Lucas : présentation avec indicateurs d'avancement (tickets, % WBS, % jours-hommes) et export du Jira par sprint.
- Intervention de l'avocate fin novembre / début décembre sur la légalité du projet (photos des utilisateurs) ; début de réflexion en amont.
- Livraison de la V1 le 7 février.

---

**Fin de réunion**
