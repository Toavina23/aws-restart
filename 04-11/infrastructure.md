# Infrastructure mondiale et fonctionnalités des infrastructure aws

Les infrastructures d'AWS sont flexible fiable évolutif et sécurisé avec des performances réseauc mondiales de haute qualité  
AWS est actuellement disponnible dans plus de 31 régions du monde avec des extensions déja en cours

## Les services de base d'aws

- Calcul
- Mise en réseau
- Stockage

## Les bases de l'infrastructure aws

- régions
- Zone de disponnibilité
- Point de présences

### Centre de données

- Une des objectifs d'AWS c'est de n'avoir aucun temps d'intéruption, aucun centre de données n'est inactifs
- Ces centres de données contiennent des matériels réseaux personnalisés par amazon, ainsi que des protocoles réseau personnalsés également
- Actuellement aws comporte environs 60K à 80k serveurs

#### 1. Les mesures prises pour atteindre la continuité de services

- L'environnement est bien choisi
- Mise en place d'un système redondant dans les centres de données
  - Mise en place d'un système de réplication de données
  - région multiple
  - auto-scaling
  - equilibrage de charge
  - services gérés
  - sauvegardes
  - surveillance et récupération automatique
- Composant de systèmes critiques stockés dans multiples emplacements isolés(Zones de disponnibilité)
  - dans les régions on a 3 à 9 zones de disponnibilités (actuellement 99 au total)
- En cas de défaillance , une processus de routage permet au service des client d'éviter la zone affecté

#### 2. Equipements utilisés par AWS

- Exploitation d'équipements générés par plusieurs ODM (Original Design Manufacturer), qui sont ensuite personnalisés

#### 3. Zones de disponnibilité

- Composé d'un ou plusieurs centre de données(possède toutes les ressources nécéssaires pour s'auto-suffire)
- Sont dans des installations distinctes
- concu pour isoler les pannes
- Interconnecté avec les autres zone de disponnibilités mais isolés physiquement
- Choisi par le client
- Chaque zone de disponnibilité comporte 3 à 6 centre de données
- Chaque zone de disponnibilité est indépentante en terme d'énergie pour limité les points de défaillance unique

#### 4. Régions AWS

- Ce sont des zones géographiques
- Composé de plusieurs zones de disponnibilité
- Les ressources ne sont pas répliqués automatiquement entre les différentes régions (C'est une résponsabilité du client)

### Choix d'une région

#### 1. Critères de séléction

- Proximité utilisateur
- Disponnibilité service(certains services ne sont pas disponnibles dans certaines régions)
- Tarification des services(la tarificaiton varie selon les régions)
- Gouvernance des données (Se référer a la loi qui régit les clients pour choisir les régions de stockage de données)
- Utilisation de CloudPing pour tester la latence entre une localisation et les régions aws

### Points de présences

- Principalement utilisés avec Amazon CloudFront(réseau de diffusion de contenu mondial)
- Caches périphériques regionnaux(pour les ressources à accès peu fréquent)
- Utilisation CloudFront avec Amazon Route 53 (Web DNS)

## Points à retenir

- #### Infrastructure élastique
  - Adaptation dynamique de la capacité
- #### Infrastructure évolutive
  - Adaptation à la croissance
- #### Haute disponnibilité
  - Performances opérationnelles élevés avec un temps d'arrêt des services minimal
