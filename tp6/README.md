# testIHM
## Question 1 : quel est l’intérêt du Test Setup et du testdown ?
Le ***"Test Setup"*** est une série d'actions exécutées avant chaque cas de test dans une suite de tests. Le but du Test Setup est de préparer l'environnement de test afin qu'il soit dans un état déterminé avant l'exécution de chaque cas de test, dans notre cas, avec un navigateur déjà démarré. \\
De même, le ***"Test Teardown"*** est une série d'actions exécutées après chaque cas de test dans un fichier de test ou une suite de tests. Le but du Test Teardown est de nettoyer ou de remettre l'environnement de test dans un état neutre après l'exécution de chaque cas de test, avec par exemple la suppression de données de test, la fermeture de connexions à des services comme au navigateur web ici.
En particulier, utiliser un Test Teardown assure que les tests sont isolés les uns des autres, réduisant ainsi le risque que l'état d'un test affecte l'exécution d'un autre test, ce qui améliore la fiabilité et la reproductibilité des tests. 

## Question 2 : si on met le close browser à la fin du test et qu’une des commandes précédentes échouent que se passe-t-il ?
Le comportement par défaut est que le test s'arrête dès que l'échec se produit. Cela signifie que toutes les commandes qui devaient être exécutées après l'échec, y compris Close Browser, ne seront pas exécutées, donc le navigateur reste ouvert.

## Question 3 :  Quel locator aller vous choisir relatif ou absolu ? Pourquoi ?
On choisit un locator relatif pour les raisons suivantes : 
- **RESISTANTS** : Les locators relatifs sont moins susceptibles d'être affectés par des modifications dans la structure globale de la page HTML. Si la page est mise à jour et que l'élément que l'on souhaite cibler reste le même mais que son emplacement dans la hiérarchie de la page change, un locator relatif a plus de chances de continuer à fonctionner sans modification. Au contraire, les locators absolus sont plus sensibles aux changements dans la structure de la page, la moindre modification de la hiérarchie HTML peut rendre le locator erroné
- **LISIBILITE** : Les locators relatifs sont en général plus courts et plus lisibles (permet la maintenance des tests)
- **RAPIDITE** : les locators relatifs sont plus court et donc plus rapides à évaluer par le navigateur, car ils spécifient moins de niveaux à parcourir

## Question 4 : Quel est l’intérêt de ces mots-clefs ?
La création de mots-clés personnalisés pour les actions et les contrôles dans Robot Framework apporte plusieurs avantages significatifs : 
- **Réutilisable et Maintenable** : En encapsulant des actions ou des vérifications fréquemment utilisées dans des mots-clés personnalisés, on peut éviter la duplication de coden ce qui rend les scripts de test plus courts et plus faciles à comprendre et à maintenir
- **Lisibilité** : Les mots-clés personnalisés peuvent être renommés de manière plus précies pour refléter l'action ou le contrôle qu'ils effectuent, ce qui rend les scripts de test beaucoup plus lisibles et compréhensibles

## Question 5 : Quelle approche de test utilise-t-on :
- Record-Replay
- Structuré
- Data-driven
- Keyword

