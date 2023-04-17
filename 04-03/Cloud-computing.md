# Cloud Computing

### Qu'est ce que le cloud computing

- Déploiement à la demande de ressources informatiques
- Fournie par l'intermédiaire d'une plateforme de service cloud
- Payé par utilisation
- On assemble multiples fonctionnalités pour parvenir au résultat attendu

### Avantages du cloud

- Mise en place rapide(pas besoin de se procurer les matériels, tout est à la charge du fournisseur)
- Coûts initiaux peu élevé
- Pas d'investissement initial
- Réduction des coûts informatiques permanent:
  - AWS baisse régulièrement les prix (énormes économies de mise a l'échelle et amélioration continue)
  - On ne paye que ce que l'on utilise (mensuellement)
- Ressources flexible (peut être basé sur la demande)
- La rapidité de mise en place permet de s'adapter facilement à l'évolution des conditions du marché
- Pas de limite géographique (contrairement a l'infrastructure sur site). Les infrastructures cloud peuvent être déployés presque partout sur la planète

### Les modèles de service cloud

- IAAS:
  - Gestion du serveur en entièreté
  - ex: aws EC2
  - Gérés pas le fournisseur:
    - Virtualisation
    - Serveurs
    - stockage
    - réseaux
  - Gérés par le client:
    - Applications
    - Données
    - Exécution
    - Middleware
    - E/S
- PAAS:
  - Matériel et os gérés par le fournisseur de service
  - Fournis un cadre pour les dev dans leurs travail
  - ex: aws Elastic Beans Talk
  - Gérés pas le fournisseur:
    - Exécution
    - Middleware
    - E/S: (Entrée/ Sortie)
    - Virtualisation
    - Serveurs
    - stockage
    - réseaux
  - Gérés par le client:
    - Applications
    - Données
- SAAS:
  - Tout est géré par le fournisseur de service
  - Vous ne gérez que vos informations
  - Gérés pas le fournisseur:
    - Exécution
    - Middleware
    - E/S: (Entrée/ Sortie)
    - Virtualisation
    - Serveurs
    - stockage
    - réseaux
  - Gérés par le client:
    - N/A

### Modèles de déploiement sur le cloud

- **Cloud (cloud tout en un)**
  - Entièrement basé sur le cloud
  - Entièrement dans le cloud
  - Peuvent être créées à partir des éléments infrastructures de base(réseau, calcul, stockage)
  - Peuvent utilisés des services de niveau supérieurs (abstraction de gestion, scaling)
- **Hybride**
  - Permet de relier des ressources présent sur le cloud à des ressources qui ne le sont pas
  - Le plus commun est la liaison entre le could et les infrastructures d'une organisation déja existante sur site (dans leur centre de données)
- **Privé**
  - Gestion d'une infrastructure de cloud depuis un centre de données privé
  - Pas beaucoup d'avantages offert par le cloud computing
  - "Réseau locale dans le cloud" (vpc)
  - Tout est géré par le client (pour besoin de conformité spécifique)

### Que pouvez vous faire dans le cloud

- Hébergement d'applications
- Sauvegarde de données
- Diffusion de contenu
- Sites web
- Informatique d'entreprise
- Base de données

## Notes:

**Cloud native**: Approche d'éxploitation du cloud computing par les solutions de contenarisation (docker, kubernetes). Prévue pour être tolérante au pannes et à une mise à l'échelle facile.
