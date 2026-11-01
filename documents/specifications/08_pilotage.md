# Pilotage du projet

## Tableau des ressources

### Phase 0 - Développement

Phase de construction. Le développement se fait en local (docker-compose : API, IA, MongoDB) ; l'infrastructure Azure est montée à la demande via Terraform pour validation ou démo, puis détruite.

| Ressource | Choix technique | Plans / forfait | Coût estimatif / mois HT |
|---|---|---|---|
| Frontend web | Azure Static Web Apps | Free | 0 € |
| Nom de domaine .fr | Registrar externe |  | ≈ 0,42 € |
| CDN / accélération médias | Non nécessaire |  | 0 € |
| Passerelle + WAF | Application Gateway WAF_v2 |  | ≈ 0 à 5 € |
| Endpoints privés | Private Link |  | ≈ 0 à 2 € |
| API Go | Azure Container Apps | Consumption | ≈ 0 € |
| Microservice IA | Azure Container Apps | Consumption | ≈ 0 € |
| Base de données | MongoDB Atlas | M0 Free | 0 € |
| Stockage photos / plans | Azure Blob Storage | Hot | ≈ 0 € |
| Sauvegardes / restauration | Non nécessaire |  | 0 € |
| Secrets applicatifs | Azure Key Vault | Standard | ≈ 0 € |
| Monitoring / logs | Azure Monitor + Log Analytics |  | 0 € |
| Registry Docker | GitHub Container Registry |  | 0 € |
| CI/CD | GitHub Actions |  | 0 € |
| Email transactionnel | Azure Communication Services Email |  | ≈ 0 € |
| SMS RSVP / rappels | Azure Communication Services SMS |  | ≈ 0 à 2 € |
| Total estimatif |  |  | ≈ 0 à 10 € |

### Phase 1 - Lancement / MVP

Mise en production avec les premiers utilisateurs (≈ 10 événements/mois, ~500 SMS). Architecture légère : ingress HTTPS natif de Container Apps, sans pare-feu applicatif dédié.

| Ressource | Choix technique | Plans / forfait | Coût estimatif / mois HT |
|---|---|---|---|
| Frontend web | Azure Static Web Apps | Free | 0 € |
| Nom de domaine .fr | Registrar externe |  | ≈ 0,42 € |
| CDN / accélération médias | Non nécessaire |  | 0 € |
| Passerelle + WAF | Ingress natif Container Apps |  | 0 € |
| Endpoints privés | Private Link |  | ≈ 0 à 7 € |
| API Go | Azure Container Apps | Consumption | ≈ 3 à 8 € |
| Microservice IA | Azure Container Apps | Consumption | ≈ 2 à 5 € |
| Base de données | MongoDB Atlas | Flex | ≈ 8 à 15 € |
| Stockage photos / plans | Azure Blob Storage | Hot - 20 Go | ≈ 0,50 € |
| Sauvegardes / restauration | Atlas Flex + Blob soft-delete |  | ≈ 0 à 2 € |
| Secrets applicatifs | Azure Key Vault | Standard | ≈ 0,10 € |
| Monitoring / logs | Azure Monitor + Log Analytics |  | ≈ 0 à 2 € |
| Registry Docker | GitHub Container Registry |  | 0 € |
| CI/CD | GitHub Actions |  | 0 € |
| Email transactionnel | Azure Communication Services Email | 2 000 / mois | ≈ 0,50 € |
| SMS RSVP / rappels | Azure Communication Services SMS | 500 / mois | ≈ 35 € |
| Total estimatif |  |  | ≈ 50 à 75 € |

### Phase 2 - Croissance

Usage régulier (≈ 50 événements/mois, ~3 000 SMS). Activation du pare-feu applicatif (WAF) et des endpoints privés ; base en tier dédié.

| Ressource | Choix technique | Plans / forfait | Coût estimatif / mois HT |
|---|---|---|---|
| Frontend web | Azure Static Web Apps | Standard | ≈ 8 € |
| Nom de domaine .fr | Registrar externe |  | ≈ 0,42 € |
| CDN / accélération médias | Azure Front Door |  | ≈ 0 à 10 € |
| Passerelle + WAF | Application Gateway WAF_v2 |  | ≈ 50 à 70 € |
| Endpoints privés | Private Link |  | ≈ 20 € |
| API Go | Azure Container Apps | Consumption | ≈ 15 à 30 € |
| Microservice IA | Azure Container Apps | Consumption | ≈ 10 à 25 € |
| Base de données | MongoDB Atlas | Flex / M10 | ≈ 25 à 55 € |
| Stockage photos / plans | Azure Blob Storage | Hot/Cool - 200 Go | ≈ 4 à 8 € |
| Sauvegardes / restauration | Atlas backup + Blob versioning |  | ≈ 2 à 5 € |
| Secrets applicatifs | Azure Key Vault | Standard | ≈ 1 à 3 € |
| Monitoring / logs | Azure Monitor + Log Analytics |  | ≈ 10 à 30 € |
| Registry Docker | Azure Container Registry | Basic | ≈ 5 € |
| CI/CD | GitHub Actions |  | 0 € |
| Email transactionnel | Azure Communication Services Email | 15 000 / mois | ≈ 3 à 8 € |
| SMS RSVP / rappels | Azure Communication Services SMS | 3 000 / mois | ≈ 210 € |
| Total estimatif |  |  | ≈ 370 à 470 € |

### Phase 3 - Échelle

Forte charge (≈ 200 événements/mois, ~12 000 SMS). Plans dédiés pour l'API et l'IA, CDN pour les médias, capacité WAF accrue.

| Ressource | Choix technique | Plans / forfait | Coût estimatif / mois HT |
|---|---|---|---|
| Frontend web | Azure Static Web Apps | Standard | ≈ 8 € |
| Nom de domaine .fr | Registrar externe |  | ≈ 0,42 € |
| CDN / accélération médias | Azure Front Door |  | ≈ 35 à 80 € |
| Passerelle + WAF | Application Gateway WAF_v2 |  | ≈ 105 à 175 € |
| Endpoints privés | Private Link |  | ≈ 25 à 40 € |
| API Go | Azure Container Apps | Dedicated | ≈ 60 à 120 € |
| Microservice IA | Azure Container Apps | Dedicated | ≈ 80 à 180 € |
| Base de données | MongoDB Atlas | M10 / M20 | ≈ 53 à 160 € |
| Stockage photos / plans | Azure Blob Storage | Hot/Cool - 5 To | ≈ 90 à 140 € |
| Sauvegardes / restauration | Atlas backup + Blob |  | ≈ 30 à 80 € |
| Secrets applicatifs | Azure Key Vault | Standard | ≈ 3 à 10 € |
| Monitoring / logs | Azure Monitor + Log Analytics |  | ≈ 60 à 150 € |
| Registry Docker | Azure Container Registry | Standard / Premium | ≈ 20 à 50 € |
| CI/CD | GitHub Actions |  | ≈ 0 à 30 € |
| Email transactionnel | Azure Communication Services Email | 75 000 / mois | ≈ 15 à 30 € |
| SMS RSVP / rappels | Azure Communication Services SMS | 12 000 / mois | ≈ 840 € |
| Total estimatif |  |  | ≈ 1 400 à 2 100 € |

## Planning / Gantt

[Gantt chart ClickUp](https://app.clickup.com/90122181566/v/g/6-901223291182-7)

## Gestion des risques

Cette matrice des risques permet d’identifier les principaux risques techniques, organisationnels, financiers, de sécurité, juridiques et produit du projet. Chaque risque est évalué selon sa probabilité d’occurrence et son impact potentiel. Le score obtenu permet de prioriser les actions de prévention ou de correction à mettre en place.

[Registre des risques](../deliverables_register/risk_management/README.md)
