# Concepts réseaux

## Types de réseaux informatiques

Les deux plus courant:

- **LAN**
  - Couvre une zone limité de surface
  - Souvent pour un batiment ou un campus
  - Utilisation du norme ethernet pour la transmission de données
  - Transfert de données très rapide
  - Les technologies sans files sont aussi très utilisés
- **WAN**
  - Relie des appareils sur de vastes zones geographiques
  - relie plusieurs LAN
  - utilise les FO et Satelites
  - Internet est le plus grand réseau étendu

## Modèles de gestion de réseaux

- Représentation des de la facon dont les données son geréés et de la facon dond les application sont hebergeées sur un réseau
- Exemple:

  - **Modèle client serveur:**

    - Données centralisé dans un seul appareil, le serveur
    - Les clients d'un réseau utilisent les serveurs pour accéder a différentes ressources resources

  - **Peer to peer:**
    - Chaque noeud possède ses propres données
    - Chaque noeud est responsable de sa propre sécurité
    - Le charge de travail est réparti entre pairs
    - le nombre de pair est limité

## Topologie réseau

C'est un modèle pour représenter les connexions entre les noeuds d'un réseau informatique

- **Topologie physique**: fait référence aux disposition des fils dans le réseau
- **Topologie logique**: montre la facon dont les données se déplace sur le résau
- **Quelques topologies**:
  - **Bus**:
    - Topologie physique:
      - Un seul cable relie tous les appareils d'une réseau
      - aussi appelé topologie en ligne ou topologie de backbone
      - cette topologie réduit la compléxité des cables
    - Topologie logique:
      - Le flux de données sur le réseau suit également l'acheminement du cable
      - ne permet qu'a un seul ordinateur d'envoyer un signal simultanément
      - toutes les appareils connectés
  - **Étoile**:
    - Chaque appareil du réseau est connecté directement à un commutateur central
    - le commutateur central gère la transmission des données
    - le commutateur central sert aussi de repéteur
    - le réseau est fiable
  - **Maille**:
    - Structure complexe similaire à une structure entre pairs
    - un maillage partiel: un appareil est connecté avec au moins deux appareils
    - un maillage total: une appareil est relié a toutes les autres appareils
    - sa mise en place est très couteuse due au grand nombre de matériels nécessaire
  - **Hybride**:
    - composition de plusieurs topologies
    - tire avantage des autres topologies

## Modèle OSI

- Définit un norme
- Les couches:
  1. Physique
     - responsable de la transmission des bit sur le réseau
  2. Liaison de données
     - detection et correction des erreurs
     - couche d'addressage physique
     - controle d'accès
     - controle des flux de données
  3. Réseau
     - assure le transfert des données vers le destinataire
  4. Transport
     - ouvre la connexion logique entre les deux appareils
     - responsable de la livraison des données
     - Protocoles courament utilisés TCP et UDP
     - routage des packets
  5. Session
     - Maintient distinctivement les données des applications
     - Gestion de la fermeture et l'ouverture des sessions
     - responsable de la reprise après panne
  6. Présentation
     - responsable de la gestion du format des données
     - gestion du chiffrement et du déchiffrement
  7. Application
     - Fournisseur d'un interface aux application pour acceder aux service réseaux
     - responsable de la liaison avec l'appareil cible

## Protocoles réseau

Règle de formatage et de transmission des données fonctionne généralement au niveau de la couche 3 ou de la couche 4

### Protocole orienté connexion

- Etablit une connexion
- Attend une réponse
- crée une session entre l'expéditeur et le recepteru
- communication synchrone

### Protocole sans connexion

- Envoie un message a un point de terminaison
- ne s'assure pas de la disponnibilité du destinataire
- ne nécessite pas de session entre l'éxpéditeur et le récepteur
- communication asynchrone

### Examples

- Protocole IP:
  - établit les règles pour le relais et le routage des données sur internet
- TCP
- TCP/IP:
  - Implémente l'ensemble des protocoles qui font que internet fonctionne
- UDP:
  - peu fiable(ne garantit pas la livraison des données)
  - surcharge faible
  - plus rapide que le protocole TCP
