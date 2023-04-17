# Introduction aux réseau

## Les différents composant réseaux:

- Node: n'importe quel appareil sur un réseau
- Hôte: Des appareils avec des configuration matériel spécifique

## Les élements d'un réseau informatique

- **Comutateur**: Connecte plusieurs appareils
- **Routeur**: Connecte plusieurs commutateur

- ### Client

  - Appareil accédant aux données ou a un service géré par une autre appareil informatioque applé serveur
  - Se connecte au serveur via un réseau
  - Peut être également un logiciel sur l'appareil d'accès

- ### Serveur

  Fournit une réponse a une demande provenant d'un appareil via réseau

  - Examples:
    - Serveur web
    - Serveur mail
    - Serveur dns
    - Serveur de base de données

- ### Carte d'interface réseau

  - Connecte un ordinateur a un réseau informatique
  - utilise un cable connécté a un hub ou a un commutateur
  - Possède sa propre addresse MAC(un identifiant matériel unique)
    - Composition:
      - partie1 (fabricant)
      - partie2 (materiel (modifiable))

- ### Cable réseau

  - **Coaxial:** Pour les connexion fournisseur-télévision
  - **Paire torsadée:**
    - Le plus courant pour les câbles d'ordinateur, téléphone, réseau
    - Communément appelé: cable ethernet
  - **Fibre Optique:**
    - Transmet de la lunière au lieu de l'électricité
    - Bon choix pour choix pour de zones à haut niveau d'interférence éléctromagnétique
    - Transmission de données à grande distance

- ### Hub et commutateur(switch)

  - Connecte toutes les noeuds d'un réseau
  - Pour s'y connecter on utilise une carte réseau
  - **hub**
    - Un appareil qui transmet les données d'un port vers toutes les autres port du hub
    - seul les déstinataires prévues ecoute
  - **Commutateur**:
    - transmet uniquement des données a l'appareil récepteur
    - améliore les perfs (pas de bande passant utilisé inutilement)

- ### Routeur
  - Connecte plusieurs commutateurs(ségments) pour former des réseaux plus étendues
  - filtre les données qui passent par lui (pare-feu)
