#**********************************************************************
#************   TP 5 Linux/Unix : Droits d’acces  Avance   ************
#**********************************************************************

    ##EXERCICE 1
#1. Creer  un groupe hackers et un groupe users avec la commande groupadd.
    `sudo groupadd hakers ; sudo groupadd users`

#2. Creer  3 nouveaux utilisateurs user1, user2 membres du groupe hackers et user3 membre du groupe users, avec la commande useradd.
    `sudo adduser user3 --ingroup=users`
    `sudo adduser user1 --ingroup=hackers`
    `sudo adduser user2 --ingroup=hackers`

#3. Creer des password pour chacun de ces comptes.
    `passwd user1`
    `passwd user2`
    `passwd user3`

#4. On va cree  un repertoire  /shared/directory/ tel que user1 et user2 peuvent creer  et editer  les fichiers dans ce repertoire  partage,  
    #et que le compte user3 pourrait pas, en realisant  les etapes  suivantes :
    #hackers est le groupe proprietaire  sur /shared/directory/
    #Ajouter set-group-ID bit au repertoire  partag . Utilisez la commande chmod g+s /shared/directory/.
    #Changer les droits sur le repertoire  tel que le groupe hackers peut y avoir les droits d’ecriture .
    `mkdir /shared/directory/`
    `chgrp hackers /shared/directory/`
    `chmod g+s /shared/directory/`
    `chmod +w +g=hackers /shared/directory/`

#5. cd /shared/directory/
    `cd /shared/directory/`

#6. Verifier  les droits dans le repertoire,    set-group-ID bit et le groupe proprietaire .
    `ls -l`
    

#7. Se connecter en tant que user1 et creer  un fichier exemple1 dans /shared/directory/.
    `su user1`

#8. Examiner les droits d’acces` sur ce fichier. Le groupe proprietaire .
    `ls -l`

#9. Se connecter en tant que user2
    `su user2`

#10. Editer /shared/directory/exemple1 et sauvegarder .
    `touch /shared/directory/exemple1`

#11. Examiner le proprietaire  du fichier.
    `ls -l`
 
#12. Se connecter en tant que user3, vous ne devez pas etreˆ capable de modifier le fichier /shared/directory/exemple1.
    `su user3`    

    #EXERCICE 2

#1. Creez  un repertoire  /DONNEES en tant que user3, ensuite modifiez les proprietaires  et groupes de /DONNEES en user3:users.
    `touch /DONNEES`
    `chown user3 /DONNEES`
    `chgrp users /DONNEES`

#2. Tout le monde doit pouvoir ecrire  dans ce dossier, mais sans supprimer les fichiers des autres. 
    #De memeˆ tous les fichiers crees  dans ce repertoire  doivent appartenir au groupe users. Placez les bons droits : 
    #il faut tous les droits pour tout le monde, le droit sticky et le SGID-bit :
    `chmod +r -og /DONNEES`
    ``

#3. Creez  un repertoire  test dans /tmp avec les droits rwxrwxrwx. 
    #Creez -y un fichier et modifiez les droits de celui-ci en retirant le droit w au groupe et aux autres. Qui peut le supprimer ?
    `mkdir /tmp/test`
    `chmod 777 /tmp/test`
    `touch /tmp/test/y`
    `chmode -w -go /tmp/test/y`

#4. Creez  un masque restrictif : vous pouvez faire ce que vous voulez,
    #le groupe a seulement acces aux repertoires  et peut lire les fichiers, mais les autres ne peuvent rien faire.
    `chmod -rwx -o /tmp/test/`

#5. Retirez le droit SUID a /usr/bin/passwd et modifiez votre mot de passe. Tentez de modifier votre mot de passe. Cela ne marche pas :
    #passwd doit etreˆ root pour modifier les fichiers. Remettez le droit s.
    