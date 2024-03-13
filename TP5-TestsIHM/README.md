# testIHM
## Question 1 : quel est l’intérêt du Test Setup et du testdown ?
Le ***"Test Setup"***  fait référence à des d'actions qui s'éxecutent *avant* chaque cas de test, qui permet donc de préparer l'environnement de test pour qu'il soit dans un état voulu (dans nôtre cas avec le Browser ouvert) avant l'exécution de chaque test.
De même, le ***"Test Teardown"*** fait référence à des d'actions qui s'éxecutent *après* chaque test dans un fichier de test, dont le but est de nettoyer ou de rénitialiser l'environnement après l'exécution de chaque test, avec par exemple la suppression de données de test ou la fermeture de connexions à des services comme au navigateur web ici.
En particulier, il permet d'assurer que les tests sont isolés les uns des autres, ce qui pourrait réduire le risque que l'éxecution d'un test non fermé affecte l'exécution d'un autre test. Il améliore la fiabilité et la reproductibilité des tests. 

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
Dans notre cas on créer un template pour une approche **data-driven**, les cas de test sont exécutés en utilisant un ensemble de données d'entrée qui sont séparées de la logique de test elle-même, soit lez même ensemble d'actions de test est répété plusieurs fois avec différents ensembles de données. Cette approche est particulièrement utile pour tester la même fonctionnalité sous différents scénarios en modifiant simplement les données d'entrée, sans avoir besoin de réécrire ou de dupliquer la logique de test.

 



