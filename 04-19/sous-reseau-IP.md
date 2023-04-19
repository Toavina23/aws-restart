# Sous-réseau IP

- Un réseau a l'intérieur d'un réseau
- Divise un grand bloc d'adresse en réseau plus petit
- Facilite la gestion
- ex: Les entreprises avec plusieurs sites peuvent créer des sous-réseaux pour les géres individuellement
- Chaque sous réseau a sa propre plage d'adresse

- **Notation CIDR**
  - Pour specifier les places d'adresses du sous-réseau
  - Pour connaitre la taille d'un sous-réseau

## Classes d'adresses

- La classification se fait par la taille des sous-réseaux qui seront gérés

### Les classes d'addresses

- **Classe A (0.0.0.0 - 127.255.255.255)**
  - Pour des réseaux extrêmement volumineux(ex: FAI)
  - jusqu'à 126 réseaux avec 16 777 214 adresses chacun
  - ex MIT 18.XXX.XXX.XXX
- **Classe B (128.0.0.0 - 191.255.255.255)**
  - Pour des réseau a taille moyenne à grande
  - jusqu'à 16 384 réseaux soit 65 000 addresses
- **Classe B (192.0.0.0 - 233.255.255.255)**
  - fournissent 2 097 150 réseaux qui peuvent chacun autoriser jusqu'à 254 adresses

### Les adresses spéciales

- **Adresse Inconue (0.0.0.0)**

  - peut représenter une demande inconue ou non routable
  - n'importe quel adresse sur un réseau
  - adresse non assignable

- **Adresse Loopback (127.0.0.1)**

  - renvoie les messages a l'appareil d'origine

- **Tous les appareils (255.255.255.255)**

  - addresse de diffusion
  - permet d'envoyer un message a tous les appareils d'un réseau

- Il est utile de penser aux classes d'adresses quand on crée un sous réseau car il limit le nombre de réseau et d'adresses possible

### Objectif des sous-réseau

- Isoler différentes parties du réseau
- Appliquer différents niveau de sécurité a différents parties du réseau
- Soulager les congestions sur le réseaux

### Classless Inter-Domain Routing

- pour specifier un bloc d'addresses IP
- son format x.x.x.x/n
- n spécifie la longeur de la partie réseau de l'addresse et le reste est pour la partie hôte
