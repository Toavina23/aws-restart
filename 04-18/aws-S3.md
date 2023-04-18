# Amazon Simple Storage Services

## Intro

- Solution de stockage d'AWS (données sous forme d'objets dans des compartiments ou bucket)
- **Les objets**
  - Le nom des objets dans les compartiments devient leurs identifiant unique
  - La modification se fait à l'éxtérieur du compartiment
- **Les compartiments (buckets)**
  - Conteneur logique des objets (aucune limite sur le nombre)
  - les actions de CRUD disponnible selon les autorisations
  - accès controllable
  - la localisation des compartiements selon le client
  - le nombre d'objet est ilimité, la taille chaque object pouvant atteindre 5To
  - par défaut toutes les objets sont privés
  - le nom des compartiments est universelle
- durabilité a onze 9
- pas besoin de gerer l'infrastructure(n'est pas associé à un serveur)
- données accéssible a tout moment:
  - Système de redondance
  - données repliqués dans 3 zone de disponnibilité aux choix
  - accès à faible latence (protocole http)

## Classes de stockage Amazon S3

- **Amazon S3 Standard (utilisation courante)**
  - Haute durabilité
  - Haute disponnibilité
  - Haute performance (pour les données fréquement consultés)
  - **Cas d'utilisation**:
    - Les applications dynamiques
    - Application mobiles
    - Distribution de contenu
    - Application dans le Cloud
    - Outil d'analyse big data
- **Amazon S3 Intelligent-Tiering**
  - Optimisation des couts ()
    - transfert des données vers le niveau accès le plus économique
    - détection des données non consultés depuis 30J au modèle d'accès peu fréquent
    - replacement automatique dans le cas d'accès fréquent
    - sans impact sur les performances
  - prévu pour la lecture de données imprévisible (pas très courant)
  - les opérations de gestion ne sont pas facturés
  - pas de facturation sur les collectes
  - la facturation se fait sur:
    - le volume
    - les transferts
    - les accès
- **Amazon S3 Standard Infrequent Acces (Standard IA)**
  - Pour les données aux accès non fréquent, mais avec un accès rapide
  - durabilité
  - latence faible (debit élevé)
  - disponnibilité
  - facturation:
    - frais de collecte par giga
  - **Cas d'utilisation**
    - stockage de données a long terme (sauvegarde)
    - magasin de données pour les fichiers de reprise après sinistre
- **Amazon S3 One Zone Infrequent Access (One Zone_IA)**
  - Pour les données aux accès non fréquent, mais avec un accès rapide
  - Données contenu dans uniquement une zone de disponnibilité
  - pour une solution a moindre couts
    - pour les clients dans le besoin de stockage à accès non fréquent
    - pas dans le besoin des standards de disponnibilité
  - **Cas d'utilisation**
    - sauvegarde secondaire
    - pour les données recréables facilement
    - solution de stockage de données repliqués (via Amazon S3 Cross Region Replication)
- **Amazon S3 Glacier**

  - Stockage sécurisé
  - Durable et Économique
  - Utilisé dans l'archivage
  - solution de stockage fiable à des prix compétitif
  - trois option d'accès(pour maintenir le faible cout) de quelques minutes à plusieurs jours
  - transfert d'objet direct
  - utilisation de la politique Amazon lifecycle pour transferer des données depuis les autres classes de stockage amazon s3 (pour les données actives)

- **Amazon S3 Glacier Deep Archive**
  - la moins chère
  - prends en change la conservation à long terme et la stockage des données consulté de 2 à 1 fois par ans
  - pour les entreprises très règlementé
  - pour des stockages des données à long terme
  - utilisé pour des cas de sauvegarde
  - Compléte S3 Glacier et offre une durabilité onze 9
  - les données sont repliqués dans 3 zones de disponnibilité (minimum)
  - restauration dans un délais de 12 heures

### Accès aux données partout dans le monde

- console aws
- cli
- sdk
- point de terminaison:
  - endpoint d'accès REST
  - compartiment:
    - https://{bucket_name}.{code_region}.amazonaws.com
    - https://{code_region}.amazonaws.com/{bucket_name}
  - objet:
    - https://{code_region}.amazonaws.com/{bucket_name}/{clé d'objet}

### Redondance dans AWS

- Une compartiement doit etre assicié a une résion de disponibilité et 3 installation de duplication distinctes de la région de données
- Durabilité de stockage meme en cas de perte simultané de données

### Cas d'utilisation de S3

- Stockage des ressources d'application
  - emplacement partagé pour l'accès aux instance d'une application aux ressources:
    - utilisation des roles IAM pour la gestion de l'accès
- Hébergement web statique
  - pour héberger toutes le ressources statiques(html, css, index)
- Sauvegarde et reprise après sinistre
- Zone de transit pour big data

### tarification

- Payez en fonction d'utilisation

  - Go par mois
  - transfert de données sortante vers d'autres régions
  - les requetes PUT, COPY, LIST, GET

- Gratuits
  - transfert entrants
  - transfert sortants vers CloudFront, EC2 dans la meme région

#### Estimation des couts S3

1. Type de classe de stockage
2. Volume de stockage
3. Requetes
   - différence de cout entre GET, PUT et COPY(GET+COPY)
4. Transfert de données
   - entrant gratuit
   - sortant facturé (attention au volume de données)
