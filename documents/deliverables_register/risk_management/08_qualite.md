# Risques qualité

3 risques. Score = probabilité × impact. Voir [README.md](README.md) pour la méthode et la synthèse.

| ID    | Titre                                 | Description                                                        | Probabilité | Impact | Score  | Plan d’action                                                                                                              |
| ----- | ------------------------------------- | ------------------------------------------------------------------ | :---------: | :----: | :----: | -------------------------------------------------------------------------------------------------------------------------- |
| RQ-01 | **Tests insuffisants**                | Bugs non détectés avant mise en production.                        |      4      |   4    | **16** | Ajouter tests unitaires, tests d’intégration, tests manuels sur les parcours critiques, checklist avant release.           |
| RQ-02 | **Incompatibilité navigateur/mobile** | L’application fonctionne mal sur certains appareils.               |      3      |   3    | **9**  | Tester sur mobile, desktop, Chrome, Firefox, Safari, utiliser un design responsive.                                        |
| RQ-03 | **Mauvaise gestion des erreurs**      | Les utilisateurs voient des erreurs techniques ou restent bloqués. |      3      |   3    | **9**  | Afficher des messages clairs, prévoir pages d’erreur propres, journaliser les erreurs côté serveur, gérer les cas limites. |
