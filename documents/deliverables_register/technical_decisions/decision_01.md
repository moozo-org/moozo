# Décision technique 01 — Frontend mobile : passage de React Native à Flutter

**Date :** 7 octobre 2026

---

## Contexte

Le Plan Qualité v1.0 retient **React Native avec TypeScript** pour l'application mobile destinée aux organisateurs et aux prestataires.

Au lancement du sprint 1 (septembre 2026), Serge a rejoint l'équipe sur le frontend mobile. Après discussion, nous avons choisi ensemble de développer l'application en Flutter, avec une Clean Architecture.

## Décision

Le frontend mobile de Moozo est développé en **Flutter (Dart)**. React Native est abandonné pour l'application mobile.

## Justification

- **Compétences de l'équipe :** le développeur responsable du mobile travaille en Flutter. Un choix aligné sur les compétences de la personne qui développe.
- **Multiplateforme natif :** Flutter produit des applications iOS et Android à partir d'une seule base de code, avec son propre moteur de rendu. L'interface est donc identique sur les deux plateformes.
- **Typage et outillage :** Dart est typé statiquement, ce qui conserve l'avantage recherché avec TypeScript. Flutter fournit un formateur (`dart format`), un analyseur (`flutter analyze`) et un framework de tests (`flutter test`) intégrés.
- **Fonctionnalités nécessaires :** caméra, galerie, notifications push et médias sont couverts par l'écosystème de packages Flutter, comme ils l'étaient avec React Native.
