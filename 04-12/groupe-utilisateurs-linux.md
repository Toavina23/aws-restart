# Les utilisateurs et groupes dans linux

## Gestion Comptes utilisateurs

- Stockage d'information: locale (/etc/passwd) ou sur un autre serveur accessible via réseau
- Un utilisateur, un compte (Les comptes ne sont pas à partager)
- les informations de /etc/passwd : utilisateur:uid:gid:repertoire de base:shell par défaut
  - contient aussi un mot de passe chiffré

### Compte utilisateur par défaut

- Crée lors de l'installation de linux et des services

### useradd

- Pour creer un utilisateur
- crée un repertoire de base pour l'utilisateur dans /home
- definit les paramètres par défaut du compte
- option de commandea:
  - -c : commentaire
  - -e : expiration du compte
  - -d : chemin d'accès au repertoire

### useradd

- Pour modifier un utilisateur
- option de commandea:
  - -c : commentaire
  - -e : expiration du compte

### userdel

- supprime un compte utilisateur
- option de commandea:
  - -r : supprime également le répertoire de base

### passwd

- change le mot de passe d'un compte utilisateur
- les utilisateurs peuvent reinitialiser leurs mot de passe
- le compte racine peut reinitialiser n'importe quel mot de passe

## Gestion groupes utilisateurs

- pour regrouper les besoins de sécurité
- emplacement de stockage des groupes /etc/group
- composants d'une ligne de groupe: groupe:mot-de-passe-groupe:id-groupe:membres-groupe

### groupadd

- crée un nouveau groupe

### groupdel

- supprime un groupe

### groupmod

- modifie un groupe existant

### Ajouter un utilisateur a un groupe

- il s'agit d'une modification au niveau de l'utilisateur
- les moyens de le faire:
  - usermod: usermod -aG hr,marketing mmajor
    - on utilise la commande usermod avec l'option aG pour ne pas supprimer les groupes existantes
  - gpasswd: gpasswd -a djoe marketing

### gpasswd

- pour administrer le fichier /etc/group
- options
  - -a(--add) ajouter un utilisateur
  - -d(--delete) supprimer un utilisateur
  - -M(--members) definit la liste des utilisateurs d'un groupe
  - -A(--administrators) definit la liste des administrateurs d'un groupe

## niveau d'utilisation

- utilisateur racine
  - accès et modification de toutes les fichiers
  - gestion des comptes
  - gestion noyau
  - gestion logiciels
- utilisateur standard
  - ne dispose que des droits et autorisation requis pour son rôle

## root

- bonne pratique en sécurité: ne pas se connecter au système avec des autorisation d'administration
- se connecter en tant qu'utilisateur standard puis augmenter les autorisation au besoin

## su

- pour augmenter les taches d'administration avec un compte standard
- pour se connecter en tant que n'importe quel utilisateur
- su root: bascule vers la racine avec l'environnement de l'utilisateur actuel (administrateur seulement)
- su - root: bascule vers la racine avec l'environnement de la racine

## /etc/sudoers

- Délégation de commandes spécifiques a des utilisateurs en les ajoutant a /etc/sudoers
- doit etre modifié avec la commande ***visudo***. ne peut pas être modifié directement
- le format est 'who where=(as whom) what'
- sudo exige le mot de passe de l'utilisateur actuel (plus sure car il n'y a pas d'échange de mot de passe)
- su exige le mot de passe du compte de substitution

## sudo
- sudo -lU pour voir les autorisations sudo déléguées
- fichier journeaux autorisations consignés /var/log/messages
- fichier journeaux commandes utilisés avec sudo /var/log/messages
- permet de déléguer certaines taches administratives a un certain utilisateur standard

## IAM 
- sert pour la gestion des utilisateurs et des accès aux ressources
- pour ce faire on utilise:
    - les utilisateurs
    - les groupes
    - les rôles 
    - les politiques (un document qui peut être attaché à un ou plusieurs utilisateurs)
- Ici on utilise aussi la politique du moindre privilège
