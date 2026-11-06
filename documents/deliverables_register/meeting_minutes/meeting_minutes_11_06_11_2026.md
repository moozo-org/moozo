# Compte Rendu de Réunion

**Date :** 6 novembre 2026
**Heure :** 14h01 à 14h39 (CET)
**Participants :** Grégoire, Mehdi, Pierre-Alexis, Paul, Kesavan, Serge
**Absent :** Aucun

---

## Objectif de la réunion

Vérifier que chacun avance (back, mobile, IA, infra, sécurité/qualité) avant le follow-up du 9 novembre, décider si des ressources doivent être ajoutées sur le back et le mobile, et centraliser la documentation dans le dépôt GitHub.

---

## Points abordés

### Avancement par membre

- **Mehdi** : Infra directement en full Terraform, sans déploiement manuel préalable. Reconnaît environ une semaine de retard sur l'objectif « v1 » prévu lundi dernier et rattrape en s'y consacrant. Vise une PR jeudi soir au plus tard, voire mercredi, pour laisser du temps de relecture. Prend l'action de rédiger la note de choix Brevo vs ACS. Propose de reprendre des reviews de PR front pour décharger Paul.
- **Pierre-Alexis** : La partie IA est plus simple que prévu (librairie Python, modèles à licence utilisable commercialement, pas besoin d'exemples en C++). La connexion avec le back se fera quand les routes seront posées. Peut rejoindre Paul sur le back rapidement. Montage du rack : pas encore terminé.
- **Serge** : Avance sur les écrans d'authentification mobile, uniquement côté front (pas encore de communication avec le back). Prévoit une PR le soir même avec des captures. Pas opposé à partager la charge, selon les compétences des autres.
- **Grégoire** : A centralisé la documentation dans le dépôt GitHub (Word et Excel déplacés), présenté le fonctionnement et expliqué le workflow Git/PR à Pierre-Alexis. Propose d'ajouter du monde sur le mobile et le back.
- **Paul** : Back en cours, partie emailing presque finie (« gros morceau »). Estime finir toute l'authentification mercredi (jour férié). Vise vendredi de la semaine prochaine pour un bloc incluant authentification, confirmation de fichier, etc. Une fois l'authentification terminée, les autres features iront plus vite. Ouvert à ce que quelqu'un implémente des routes supplémentaires. Se propose pour les reviews Terraform après ses tests.
- **Kesavan** : En reprise. A fait des recherches sur des outils d'audit et un peu de documentation. Attend que des éléments soient construits pour lancer des tests et craint un décalage entre la documentation préparée en amont et la réalité. Souhaite remplacer l'étiquette « développeur » par « Technicien cybersécurité opérationnelle ».

### Back : authentification et emailing

- Authentification et emailing presque terminés côté back (Paul).
- Le choix d'emailing a changé : l'infra prévoyait Azure Communication Services (ACS), Paul est parti sur Brevo pour la praticité.
- Rien n'est encore déployé et tout passe par Terraform, donc le changement ne pose pas de problème.
- Grégoire demande une note de choix expliquant le passage d'ACS à Brevo ; Mehdi prend l'action.
- Grégoire a rappelé que l'authentification n'était peut-être pas nécessaire pour le MVP demandé, mais qu'elle est désormais faite.

### Renforts back et mobile

- Après la feature IA, Pierre-Alexis rejoint Paul sur le back dans un premier temps, puis poursuit après le follow-up.
- Pour le mobile, le besoin d'un renfort est à réévaluer ; Paul rappelle que le front est réparti avec des fonctionnalités du back.

### Workflow Git et ClickUp

- Créer une branche depuis `develop`, pousser autant que nécessaire, puis ouvrir une PR qui déclenche une review ; la tâche est fermée ensuite.

### Infra

- Choix assumé de partir directement sur Terraform plutôt que de déployer à la main.
- Tout le code Terraform doit être sur les branches GitHub.

### Sécurité et qualité

- Kesavan peut avancer à partir de la documentation existante (conventions, routes), selon Mehdi et Grégoire.
- Grégoire demande à Kesavan de créer et mettre à jour des tâches et sous-tâches dans ClickUp (rubrique « Sécurité et Qualité »), y compris pour la lecture d'articles, pour rendre le travail visible.
- Kesavan signale des sous-tâches dupliquées dans la vue ClickUp ; Grégoire ajustera la vue si besoin et explique comment créer les sous-tâches au bon endroit.

### Suivi de l'avancement

- Grégoire demande de mettre à jour statuts et historique de travail dans ClickUp au fil de l'eau, pour l'évaluation (en particulier le mobile).

### Documentation : GitHub comme source unique

- Les documents vivants ne sont plus sur OneDrive ; les mises à jour se font dans le dépôt, via PR vers `main`.
- Diagrammes en Mermaid ; script de génération de PDF depuis les fichiers Markdown, avec création automatique du WBS et d'autres artefacts.
- Les scripts de génération ne sont pas poussés.

### Calendrier

- Le follow-up commence à partir du 9 novembre.
- Le MVP reste prévu pour février.

---

## Décisions prises

- GitHub devient la source unique de la documentation (Markdown, PDF et diagrammes générés) ; OneDrive n'est plus utilisé pour les documents vivants.
- Emailing : Brevo retenu à la place d'ACS, à justifier par une note de choix (technical decision n° 4) avant tout déploiement.
- Infra : bascule directe en full Terraform confirmée.
- Pierre-Alexis rejoint le back après la feature IA.

---

## Répartition des actions

- **Mehdi :** Rédiger la note de choix Brevo vs ACS et son impact infra ; poursuivre l'infra full Terraform et ouvrir une PR pour relecture (jeudi soir au plus tard, voire mercredi).

- **Pierre-Alexis :** Terminer la petite feature IA, puis rejoindre le développement back.

- **Kesavan :** Préparer et centraliser la documentation sécurité/qualité dans le dépôt ; créer et mettre à jour les tâches ClickUp (Sécurité et Qualité), en consignant lectures et outils d'audit.

- **Serge :** Soumettre une PR mobile (écrans d'authentification); tenir ClickUp à jour (statuts, historique).

- **Paul :** Finaliser et tester l'authentification et l'emailing côté back (authentification mercredi, bloc complet vendredi prochain) ; faire ensuite les revues Terraform en attente.

- **Grégoire :** Partager à Kesavan les liens GitHub (MD/PDF) et pousser les scripts de génération de documents ; arbitrer l'ajout de ressources sur le back et réévaluer le besoin sur le mobile ; ajuster la vue ClickUp si besoin.

---

## Prochaines étapes

- Début du follow-up le 9 novembre.
- Note de choix Brevo vs ACS rédigée avant tout déploiement.
- PR Terraform ouverte pour relecture en milieu de semaine prochaine.
- Authentification et emailing back terminés d'ici vendredi prochain.
- MVP prévu en février.

---

**Fin de réunion**
