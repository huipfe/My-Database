# My Database

À partir d’une demande client, vous allez devoir modéliser une base de données.
Les livrables attendus sont un diagramme de classes UML ou un Modèle Conceptuel de Données.
Il vous sera aussi demandé de transmettre le fichier .sql avec les lignes de commande de la retranscription
de cette base de données dans un Système de Gestion de Base de Données Relationnelles (SGBDR).

## Contexte
En vue de la mise en place d’un logiciel de réservation de places de cinéma, modéliser la base de données
attendue.
Vous avez déjà eu un entretien avec le commanditaire (disponible en annexe). À partir des réponses
apportées, concevez le diagramme de classes UML ou un Modèle Conceptuel de Données.
Enfin, vous devez retranscrire ce schéma physique en tables SQL alimentées de données factices à l’aide
d’un SGBDR (ex: MariaDB, PostgreSQL) et savoir comment l’exporter pour le commanditaire.

### Modalité 
Modalités / Restrictions :
- Modélisation de la base de données sous forme de MCD ou diagramme de classe UML
- Écriture des différents scripts SQL de création sécurisée de base de données/de ses tables ainsi
que des relations et contraintes entre elles
- Remplissage des tables avec de fausses données (toujours à l’aide de commandes SQL)
- Explication dans la description du projet d’un processus de sauvegarde de la BDD complète
Nécessité de travailler uniquement dans le terminal !
Notez toutes vos commandes dans un fichier .sql. Un export d’une application comme phpMyAdmin ne
sera pas accepté.

### Critères d'évaluation
1. Construire l’organisation physique des données (5 points).
2. Mettre en œuvre en SQL les instructions de création/modification d'une base de données et de ses
tables (4 points).
3. Rédiger les instructions d'implémentation des contraintes (3 points).
4. Élaborer des scripts d'alimentation factice de données dans la base (3 points).
5. Connaître les techniques de gestion de la sécurité d'une base de données (4 points).
6. Savoir utiliser un utilitaire de sauvegarde et restauration (1 point).


