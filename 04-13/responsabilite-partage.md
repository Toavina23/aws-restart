# Responsabilité partagée

- **Les résponsablités client**: (sécurité dans le cloud)
  - Données client
  - Application, IAM Aws
  - OS, réseau, config pare-feu:
    - Maintenance, et application et correctif
    - Groupe de sécurité
  - Chiffrement de données
  - Gestion des comptes
    - paramètres de connexion et d'autorisation
- **Les résponsablités d'AWS**: (sécurité du cloud)
  - Service de base AWS (calcul, stockage, base de données, mise en réseau)
  - Infrastructue Mondiale Aws (régions, zone de disponnibilité, emplacement périphériques)
  - Securité physique des centres de données
  - Infrastructure logicielle
  - Infrastructure matérielle
  - Infrastructure réseau

# Caractéristiques de service et résponsabilité en matière de sécurité

## IaaS

- **Examples:**
  - Amazon EC2
  - Amazon Elastic Block Store
  - Amazon Virtual Private Cloud
- Souplesse pour configurer les paramètres réseaux et stockage
- Client responsable de la gestion des autres aspect de sécurité
- Client configure les controles d'accès

## PaaS

- **Examples**
  - Aws Lambda
  - Amazon Relational Database Service
  - Aws Elastic Beanstalk
- Client pas besoin de gérer l'infrastructure sous-jacente
- Aws gère l'OS, application de correctifs a la bdd, config firewall, reprise après sinistre (RS)
- Client se concentre sur la gestion du code ou des données

## SaaS

- **Examples**
  - Aws Trusted Advisor
  - Aws Shield
  - Amazon Chime
- Hébergement centralisé
- Payement a l'utilisation / abonement
- accessible sur web browser phone ou API
- Non gérance du client de l'infrastructure