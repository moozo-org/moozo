# Risques de sécurité

9 risques. Score = probabilité × impact. Voir [README.md](README.md) pour la méthode et la synthèse.

| ID | Titre | Description | Probabilité | Impact | Score | Plan d’action |
|---|---|---|:-:|:-:|:-:|---|
| RS-01 | **Fuite de clés API** | Clés SMS, SMTP, S3 ou cloud exposées via Git, logs ou mauvais stockage. | 3 | 5 | **15** | Utiliser des variables d’environnement, ne jamais commit les clés, faire de la rotation, utiliser un gestionnaire. |
| RS-02 | **Accès trop large aux données** | Permissions trop large. | 3 | 5 | **15** | Séparer les rôles, restreindre les buckets de stockage, verifier les permissions régulièrement. |
| RS-03 | **Données sensibles dans les logs ou accessibles publiquement** | Emails, téléphones, photos ou erreurs techniques visibles dans les logs. | 1 | 4 | **4** | Masquer les données sensibles dans les logs, désactiver les logs verbeux en production, vérifier les permissions publiques, tester les accès anonymes. |
| RS-04 | **Faiblesse d’authentification** | Mots de passe faibles, absence de limitation des tentatives ou mauvaise gestion des sessions. | 3 | 5 | **15** | Imposer une politique de mots de passe, ajouter limitation de tentatives, utiliser des tokens sécurisés, mettre en place expiration de session. |
| RS-05 | **Injection SQL / XSS / faille applicative** | Entrées utilisateur mal filtrées pouvant permettre vol de données ou exécution de code. | 2 | 5 | **10** | Valider les entrées, faire des tests de sécurité basiques. |
| RS-06 | **Absence de conformité RGPD** | Mauvaise gestion des données personnelles : consentement, suppression, conservation. | 3 | 4 | **12** | Limiter les données collectées, documenter les finalités, permettre suppression des données, définir une durée de conservation, protéger les exports. |
| RS-07 | **Mauvaise configuration réseau → exposition d'un service privé** | Une erreur (ingress public, NSG trop permissif, stockage public) expose à Internet un service censé rester dans le VNet. | 3 | 5 | **15** | Deny par défaut, scans de config IaC (Checkov), pas d'IP publique sur les services internes, tests d'exposition, revue des règles réseau. |
| RS-08 | **Compromission de la chaîne CI/CD** | Dépendance ou image Docker compromise, ou secret/token GitHub Actions exposé, permettant d'injecter du code ou d'accéder à l'infra. | 2 | 5 | **10** | Scans (Gitleaks, Trivy, Checkov), authentification OIDC plutôt que secrets longue durée, épinglage/signature des images, droits minimaux du pipeline. |
| RS-09 | **Traitement de données biométriques (reconnaissance faciale)** | Donnée sensible au sens RGPD art. 9 : sans base légale ni analyse d'impact, exposition juridique forte et atteinte à la vie privée. | 3 | 5 | **15** | Consentement explicite + opt-out, réaliser une AIPD, minimiser et chiffrer les données, conservation courte, isoler le service IA. |
