# Protocole IP(Internet Protocol)

- Protocole réseau
- établi les règles pour le relais et le routage de données sur internet
- une norme essentielle dans la sute plus vaste de protocoles TCP/IP
- utilise:
  - les adresses IP pour identifier les appareils
  - les ports pour identifier les points de terminaison
- prise en charge de la création de sous-reseau

## Adresses IP

- Pour identifier l'hôte sur un réseau
- Pour identifier la localisation l'hôte
- attribution dynamique ou statique
- varie selon le réseau
- **adresse IP publique**:
  - une adresse accéssible partout via internet
  - Unique dans le monde
  - attribué a un apparei qui doit avoir accès a internet
- **adresse IP privé**:
  - attributé à un ordinateur dans un réseau privé (n'a pas accès a internet)
  - utilisé pour que les appareils ne se voient pas
  - exemple:
    - pour les serveurs de base de données
    - pour les serveurs d'application
  - Certaines addresses IP ne sont pas assignable:
    - adresse du routeur(adresse passerelle)
    - adresse de diffusion (pour transmetre des données à tout les noeuds du réseau)

## Numéro de port

- utilisé avec l'adresse IP pour avoir l'information de destination des flux de données
- C'est comme un numéro de port
- un appareil peu envoyer des données a plusieurs appareils en même temps
- permet d'envoyer plusieurs flux de données en même temps qui seront toutes traités
