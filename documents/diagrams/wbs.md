# WBS - Work Breakdown Structure

Un diagramme par domaine. La source est `../specifications/wbs/` (un fichier par domaine, avec son PDF d’une page).

## Événements

```mermaid
flowchart LR
    n0["Événements"]
    n0 --> n1["Événement"]
    n1 --> n2["Création d'un événement"]
    n1 --> n3["Modification d'un événement"]
    n1 --> n4["Suppression d'un événement"]
    n0 --> n5["Invités"]
    n5 --> n6["Ajouter un invité"]
    n5 --> n7["Modifier un invité"]
    n5 --> n8["Supprimer un invité"]
    n5 --> n9["Envoyer une demande de RSVP"]
    n5 --> n10["Relancer un invité"]
    n5 --> n11["Voir les invités"]
    n5 --> n12["Répondre à un RSVP"]
    n0 --> n13["Plan de salle"]
    n13 --> n14["Création de la salle"]
    n13 --> n15["Gestion des tables"]
    n13 --> n16["Visualisation du plan de table"]
    n0 --> n17["Programmation"]
    n17 --> n18["Ajouter une étape à la programmation"]
    n17 --> n19["Visualiser la programmation"]
    n17 --> n20["Supprimer une étape"]
    n17 --> n21["Visualisation de la programmation"]
    n0 --> n22["Liste de tâches"]
    n22 --> n23["Ajout d'une tâche"]
    n22 --> n24["Modification d'une tâche"]
    n22 --> n25["Validation d'une tâche"]
    n22 --> n26["Suppression d'une tâche"]
    n0 --> n27["Options"]
    n27 --> n28["Activer/Désactiver le partage des photos"]
    n27 --> n29["Activer/Désactiver le plan de table"]
    n27 --> n30["Activer/Désactiver les emails RSVP"]
    n27 --> n31["Paramétrer les RSVP"]
    n27 --> n32["Personnaliser le mail RSVP"]
    n27 --> n33["Prévisualiser le mail"]
    n27 --> n34["Paramétrer les relances automatiques"]
    n27 --> n35["Choisir le mode d'envoi"]
    n27 --> n36["Envoyer un RSVP ou relance individuelle"]
    n27 --> n37["Relance automatique X jours avant l'événement"]
    n27 --> n38["Refus automatique des non-répondants"]
```

## Utilisateurs

```mermaid
flowchart LR
    n0["Utilisateurs"]
    n0 --> n1["Inscription organisateur"]
    n0 --> n1b["Inscription prestataire"]
    n0 --> n2["Connexion"]
    n0 --> n3["Vérification du compte"]
    n0 --> n4["Mot de passe oublié"]
    n0 --> n5["Consultation du profil"]
    n0 --> n6["Modification du profil"]
    n0 --> n7["Déconnexion"]
    n0 --> n8["Suppression de compte"]
    n0 --> n9["Vérification des invités"]
```

## Paiements

```mermaid
flowchart LR
    n0["Paiements"]
    n0 --> n1["Ajouter un moyen de paiement"]
    n0 --> n2["Supprimer un moyen de paiement"]
    n0 --> n3["Payer une prestation"]
    n0 --> n4["Consulter l'historique des paiements"]
    n0 --> n5["Rembourser une prestation"]
    n0 --> n6["Gérer les litiges"]
```

## Messagerie

```mermaid
flowchart LR
    n0["Messagerie"]
    n0 --> n1["Création d'une conversation"]
    n0 --> n2["Visualisation des conversations"]
    n0 --> n3["Envoi d'un message"]
    n0 --> n4["Notifications"]
```

## Photos

```mermaid
flowchart LR
    n0["Photos"]
    n0 --> n1["Ajout de photo"]
    n0 --> n2["Suppression de photo"]
    n0 --> n3["Visualisation des photos"]
```

## Prestations

```mermaid
flowchart LR
    n0["Prestations"]
    n0 --> n1["Ajout de prestation"]
    n0 --> n2["Modification de prestation"]
    n0 --> n3["Suppression de prestation"]
    n0 --> n4["Ajout d'une prestation à un événement"]
    n0 --> n5["Mise en pause d'une prestation"]
    n0 --> n6["Accepter/refuser une demande de prestation"]
```

## Administration

```mermaid
flowchart LR
    n0["Administration"]
    n0 --> n1["Modération des prestataires"]
    n1 --> n2["Consultation des prestataires"]
    n1 --> n3["Consulter le détail d'un prestataire"]
    n1 --> n4["Valider un prestataire"]
    n1 --> n5["Refuser un prestataire"]
    n1 --> n6["Suspendre un prestataire"]
    n1 --> n7["Réactiver un prestataire suspendu"]
    n1 --> n8["Consulter l'historique administratif"]
    n0 --> n9["Modération des prestations"]
    n9 --> n10["Consultation des prestations"]
    n9 --> n11["Valider une prestation"]
    n9 --> n12["Refuser une prestation"]
    n9 --> n13["Supprimer une prestation"]
    n0 --> n14["Modération des avis"]
    n14 --> n15["Consulter l'ensemble des avis"]
    n14 --> n16["Filtrer les avis par statut"]
    n14 --> n17["Consulter le détail d'un avis"]
    n14 --> n18["Supprimer définitivement un avis"]
    n14 --> n19["Masquer temporairement un avis"]
    n14 --> n20["Restaurer un avis masqué"]
    n14 --> n21["Consulter les avis signalés"]
    n14 --> n22["Bannir un utilisateur abusif"]
    n14 --> n23["Suspendre le droit de publication d'avis"]
    n14 --> n24["Consulter l'historique des sanctions"]
```
