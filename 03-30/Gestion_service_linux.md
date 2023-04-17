# Gestion des services linux

## systemctl pour la gestion des services

- ### Utilisations:
  - activation/désactivation
  - démarrage/redémarrage
- ### Les sous commandes:
  - status
  - start
  - stop
  - restart
  - enable
  - disable
- ### example
  - **_systemctl list-units --type=service:_** la liste des services seulement
  - **_systemctl list-units --type=service --status=active:_** la liste des services actives seulement

## lshw

- permet de voir la liste des périphériques

## du

- liste des fichiers avec leur tailles sur le disque

## df

- liste des disques avec leur tailles

## fdisk

- liste et modifie les partitions sur le disque

## vmstat

- indique l'utilisation de la mémoire virtuelle

## free

-indique l'utilisation de la mémoire physique

## top

- liste les processus et l'utilisation des ressources du système

## uptime

-durée de fonctionnement du système

# Amazon Cloudwatch

- Permet de surveiller la santé et la performances de ressources et application aws
- Surveille les instances Amazon EC2 (cpu usage, read, writes)
- On peut créer des alarmes
- Amazon SNS: pour envoyer des messages à d'autres services aws ou a des particuliers par e-mail et SMS
