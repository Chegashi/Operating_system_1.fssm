#**********************************************************************
#************     TP 6 Linux : Processus et Redirection    ************
#**********************************************************************

    ##EXERCICE 1

#2. Vous avez lance une commande qui monopolise la console sans rien afficher car le traitement est tres long. Comment la passer en arrière-plan ?
    `cmd&`

# 3. Listez les processus appartenant a root.
    `ps U root`

# 4. Comment afficher une arborescence de tous les processus ?
    `pstree`

#5. Comment savoir tres` simplement si le processus firefox tourne ?
    `ps aux | grep firefox`

#6. 6. Isolez les numéros des processus correspondant aux divers shells bash lances.
    `ps aux | grep shell`

# 7. Exécutez ́ une commande sleep 100&. Terminez ensuite proprement ce processus.
    `sleep 100&`

#8. Que se passe-t-il si en tant que root vous ”tuez” violemment le processus 1 ?
    " redemarer la machine"

#9. Un processus récalcitrant ́ refuse de s’arrêterˆ. Quelle est la seule action possible ?
    `sudo kill`

# 10. Comment êtreˆ certain qu’un processus important ne s’arrêteraˆ pas lorsque vous fermerez votre console ou terminal ?
    `nohup ls`