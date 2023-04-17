# Amazon EC2

C'est un service de calcul essentiel qui est une des bases des autres services aws

## Liste des services de calculs d'aws

- VM:
  - Amazon EC2
  - Amazon Lightsail
- Conteneurs
  - Amazon ECS
- PaaS
  - Aws Elastik beans talk
- ServerLess
  - AWS Lamda
  - AWS Farget
- Solutions spécialisés
  - AWS outpost
  - AWS Batch

### 1. Amazon EC2

- Redimenssionable
- Sécurité (via les groupes de sécurité)

### 2. Amazon Lightsail

- Fourni une instance de cloud privé virtuel pour executer une des charges de travail simples
- Un Coût raisonnable

### 3. Amazon ECS

- Pour excecuter des applications dans des conteneurs (docker)

### 4. Elastic beans Talk

- Execution des applications et services web développés pour plusieurs langages

### 5. Aws Lambda

- Solution de calcul sans serveur

### 6. Aws Farget

- Aws Lambda pour les conteneurs

### 7. Aws Outpost

- Pour utiliser les services aws sur site

### 8. Aws Batch

- Exécution des charges de travail par lot

- Les services de calculs via VM et Conteneurs permettent d'avoir un meilleur controle sur l'infrastructure et un meilleur niveau de personnalisation
- Les services PAAS et ServerLess permettent de se concentré uniquement sur l'applications
- Les Services spécialisés permettent l'utilisation du cloud hybride et du traitement des charges de travail par lot

## Plus de détails sur Amazon EC2

- Amazon ec2 est utilisable dans toutes les rôles de serveur possibles(web, fichiers, ...)
- C'est une service redimmensionnable et sécurisé
- Déployable à n'importe quel taille, dans toutes les zones de disponnibilités partout dans le monde
- Sont lancés à partir des AMI (Amazon Machine Image), modèles VM
- La gestion du traffic se fait a partir des groupes de sécurité

### Lancement d'une instance

#### 1. Amazon Machine Image

- Modèle pour créer une instance
- OS windows ou Linux
- Certains logiciels son préinstallés
- Options d'images:
  - Quick Start: AMI fournies par Aws
  - MY AMIS: ceux que le client a créer
  - Aws Marketplace: Modèles préconfigurés de tiers
  - Community AMI: AMI créés par la communauté (less secure)
- Les composants d'une image AMI:
  - modèles pour le volume racine: OS et tout ce qui est installé sur ce système
  - Autorisation de lancement: gère les comptes aws pouvant utiliser l'image
  - mappage de periphérique de stockage en mode bloc: Indique le volume à attachr à l'instance
- Les avantages:
  - Répétitivité:
    - lancement des instances de manière répétitive
  - Réutilisabilité:
    - Les instances lancé a partir de la même image on la même configuration
  - Recouvrabilité:
    - Lancement d'une image identique en cas de défaillance

#### 2. Type d'instances

- critère de séléction de l'instance:
  - Mémoire
  - Puissance de traitement
  - Espace disque et type de disque
  - Performance réseau
- les catégories de types d'instances
  - Usage général
  - Optimisé pour la calcul
  - optimisé pour la mémoire
  - optimisé pour le stockage
  - Calcul accéléré
- Les types dinstance offrent les options: famille génération et taille
- Les instances d'une famille aillant une génération plus élevé sont plus performant et offrent un rapport qualité prix plus intéressant

#### Fonction de mise en réseau des types d'instances

- Bande passante variant selon le type d'instances
- Optimisation des performances de mise en réseau et bande passante:
  - En cas d'instances interdépendantes: les lancer das un groupe de placement
  - Activer la mise en réseau amélioré
- Les types de réseaux amélioré:
  - ENA(Elastic Network adapter): prends en charge des vitesses allant jusqu'à 100 gb/s
  - Interface VF (Virtual Function): prends en charge des vitesses réseau allant jusqu'à 10 gb/s

#### 3. Définition des paramètres réseaux

- Où vous voulez déployer l'instance ?
  - identifiez le cloud privé virtuel (VPC) et éventuellement le sous-réseau
    -Voules-vous que l'addresse IP publique soit attribué automatiquement ?

#### 4. Attribution d'un role IAM (facultatif)

- utilisé si on veut communiquer avec d'autres services aws
- Un rôle IAM attaché à une insta EC2 est conservé dans un profil d'instance
- On peut attribuer un profil IAM déja existante
- Il n'est pas recommandé de stocker des autorisations dans l'instances, on doit attacher les roles à l'instance elle même

#### 5. Données utilisateurs

- On peut spécifié un script de données utilisateurs au lancement de l'instance
- Elles sont utiles pour personnaliser l'environement d'exécution d'une instance
- Toutes le opérations possibles sur bash peuvent être éxecutés

#### 6. Configuration du stockage

- configuration Volume racine
- Attachez des volumes de stockage supplémentaire
- Pour la configuration de chaque volume:
  - Specifier la taille
  - Specifier le Type de volume
  - Si le volume est résilié quand l'instance est résilié
  - Si vous souhaité utiliser le chiffrement
- Les types de stockage:
  - Amazon Elastic Block store (Amazon EBS):
    - Volumes de stockage **_durable_** de type bloc
    - Si l'instance s'arrête, les données sont conservés
  - stockage d'instances Amazon EC2:
    - Le stockage éphémère concerne les disques attachés à l'ordinateur hôte sur lequel l'instance EC2 est écécuté
      si L'instance s'arrête, les données sont supprimés
  - Amazon Elastic file system (Amazon EFS)
  - Amazon Simple storage Service (Amazon S3)

#### 7. Ajout d'étiquette

- Permet d'associer des métadonnées a une instance ec2

#### 8. Groupe de sécurité

- Une ensemble de règles de pare-feu pour le traffic entrant et sortant
- Sa création nécéssite la spécification d'un port et du protocole utilisé ainsi que la source
- Si on ne spécifie pas les groupes de sécurités, une groupe par défaut sera utilisé
- Elle sont modifiables a tout moment et les nouvelles règles seront appliqués aux instances du groupe de sécurité

#### 9. Identification ou création de la paire de clé

- Utilisation d'une existante ou créer une nouvelle
- Composé d'une clé publique stockée par AWS et d'une clé privée stocké par le client
- Permet de sécuriser les connexions de l'instance

### Modèles de tarification Amazon EC2:

- Instances a la demande
  - factureation a l'heure
  - pas d'engagement a long terme
  - donne droit a l'offre gratuite aws
  - la tarification est la plus haute parmi toutes les modèles proposés
  - disponnible pour la facturation par seconde sous amazon linux ou ubuntu
  - utilisé seulement pour des opération à court terme et des charges de travail a pics irréguliers
  - la seule instance valable pour la mise a l'échelle automatique
  - faible cout et flexibilité
  - utilisé pour le developpement et le test d'application
- Instances réservées
  - Payement complet, partiel ou aucun paiement initial pour l'instance
  - remise sur le tarif horaire de cette instance (la seule instance avec des remises)
  - durrée d'un an ou trois ans
  - disponnible pour la facturation par seconde sous amazon linux ou ubuntu
  - Idéal pour les utilisations constantes (à moyen/long terme) et intensives
  - permet d'avoir des possibilités d'économies par rapport a l'utilisation des instances a la demande
  - offre une prévisibilité et une disponnibilités garantie en cas de besoin
  - les paymement initiaux peuvent réduire encore plus les couts
  - pour les charges de travail prévisible et stable
- Instances réservées planifiées
  - permet de planifier des ressources sur une base quotidienne(mensuel, hebdomadaire) jusqu'à une durré de 1 an
  - payement sur la durrée d'utilisation des instances même si on le les utilises pas 
- Hôtes dédiés
  - C'est un serveur physique
  - doté d'une capacité d'instance EC2
  - dédié a votre utilisation
  - permet d'utiliser les licences de logiciels de votre entreprise
  - permet de répondre aux exigences 
  - permet d'economiser sur les licences logiciels (Bring Your Own Licence)
- Instances dédies
  - des instances qui s'éxécutent dans un vpc avec un matériel dédié au client
- Instance spot
  - éxécutés tant qu'elles sont disponnibles(selon le traffic, etc...)
  - le prix demandé doit être supérieur au prix de l'instance spot
  - peuvent être intérompu par aws (mais notifié dans les 2 minutes qui suivent)
  - prix nettement inférieur par rapport aux instances a la demande
  - recommandé si on possède une fléxibilité au moment d'exécution de l'instance
  - disponnible pour la facturation par seconde sous amazon linux ou ubuntu
  - le prix horaire fluctue selong l'offre et la demande
  - pour les charges de travail dynamique a grandes échelles
  - utile si on a des prix de calculs bas
  - pour des nécéssités de puissance de calcul a grande échelle flexible
