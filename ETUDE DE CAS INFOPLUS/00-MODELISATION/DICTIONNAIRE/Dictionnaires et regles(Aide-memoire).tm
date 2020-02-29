

• Regles d'organisations Infoplus
• les projets sur lesquels chaque salarié travaille ou a travaillé,
• les taches sur lesquelles chaque salarié travaille ou a travaillé,
• le client concerné par chaque projet,
• la disponibilité des matériels (Unités centrales, écrans, …) utilisés par ses salariés.


un salarié peut ou peut ne pas travailler dans une division
une division peut avoir un ou plusieurs Salariés
un salarié à une fonction au sein de la division
un salarié reçoit un salaire à une date donnée 
un salarié peut ou peut ne pas avoir un chef direct
un salarié peut travailler dans une équipe pendant un certains nombres de jours 
un salarié peut  utiliser un ou plusieurs matériels pendant une durée déterminéé 

plusieurs Salariés peuvent former une équipe
une équipe peut avoir une durée déterminée
une équipe represente un pole de compétence
une équipe à au moins un salarié voir plusieurs
une équipe a une spécialisation

un salarié peut utiliser du matériel 
un materiel peut avoir plusieurs matériel (reflexive ?)

un salarié peut etre chef de projet (reflexive)
un chef de projet peut coordonné un projet
un projet peut avoir une ou plusieurs taches 
une projet a une date de debut et de fin
un meme salarié peut realiser une ou plusieurs taches
plusieurs salariés peuvent travaillé sur la meme taches

une tache a une date de début et de fin et une durée déterminée

le client est lié au projet
un client est composé  de contacts 

le trigrame est une donnée calculé ? il fait lobjet d'une procédure stockée
plusieurs spécialisation crée un pole de compétence ?
un materiel est il spécifique a un projet ou une tache ?

un salarie ne fait partie que d'une equipe 

une division 
- possede un numéro
- un nom
- possede une adresse
- code postal
- possede une localité
** - possede un employe #(en clé étrangère)


salarié
- possede un numero de matricule
- un nom 
- un prénom
- un numero de tel 
- un trigramme 
- adresse mail
- une fonction
- salaire
** -id_salarie reflexive (chef direct ou pas)

date_integration projet
date_integration equipe

équipe
- pole de compétence
- spécialisation
** - durée (association)
** - salarié (clé étrangere)



duree_equipe 

matériel
- possede un numero
- un nom
- un type
- une réference de constructeur
** - salarié (étrangere)

Projet 
- possede un nom
- possede des taches
 - date ?
** - id du salarié (clé étrangère)
** - id du client (clé étrangère)
** - id chef projet ?
** - date projet (association) ?

tache
- possede un numero
- possede un nom
- une description
- une date
- une durée
** projet (etrangere)

client = entreprise 
- possede un nom
- une raison sociale
- adresse
- code postal
- activité
** - contacts (clé étrangère)
** - projet (etrangere)

contact
- nom
- prénom
- telephone
- adresse mail
- role dans son entreprise
** - client (clé étrangère)


salaire
- date
** - salarié (etrangere)


