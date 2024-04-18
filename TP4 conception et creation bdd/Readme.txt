Binome: Groupe8


Exercice1:
1. Modélisation logique des tables (entités):

-Lycée(numLycee{id},ville)
-Lycéen(numLyc{id})
-Visite(numVisite{id},titre,dateV,heureDeb,heureFin)
-Intervention(numInter{id},ordrePass,duree,salle)
-Etudiant(numEtu{id})
-UE(numUE{id},titre)
-Enseignant(numEns{id})
-Categorie(numCat{id},nom)
-Personne(numPers{id},nom,prenom,mail)

2.Les relations qui modifieront les clés primaires découlant des identifiants des
entités,ainsi que les clés étrangères:
(les compositions: les clés primaires de l'entité forte integrent la clé primaire de l'entité faible )
Visite(composition) 1--contenir--1..* Intervention
--->Intervention(numInter{id},ordrePass,duree,salle,#numVisitie{id})

# Remarque: #num{id} : clé primaire d'une entité faible ayant intégré la clé primaire d'une entité forte, découlant d'une composition.

3.ordre adéquat pour la réalisation de transformations de relations en tables:
D'abord les relations contenant une composition, ensuite les autres.

4. Relations-Associations:
Visite(composition) 1--contenir--1..* Intervention
R1*c:
Intervention(numInter{id},ordrePass,duree,salle,#numVisitie{id})


Lycée 1--etre inscrit--* Lycéen
R1*:Lycéen(numLyc{id},#numLycee)

Lycée 1--organiser dans--* Visite
R1*:Visite(numVisitie{id},titre,dateV,heureDeb,heureFin,#numLycee)

Enseignant 1--avoir responsabilité--* Visite
R1*:Visite(numVisitie{id},titre,dateV,heureDeb,heureFin,#numLycee,#numEns)

Visite *-----*Lycéen
R**p:Inscription(#numLyc,#numVisite)

Lycéen 0..1--etre lycéen avec ou sans composition--1 Personne
R011:Lycéen(numLyc{id},#numLycee,#numPers)

Enseignant 0..1--etre enseignant avec ou sans composition--1 Personne
R011:Enseignant(numEns{id},#numPers)

Intervention *--présenter--1 Etudiant
R1*:Intervention(numInter{id},ordrePass,duree,salle,#numVisitie{id},#numEtu)

Etudiant 0..1--etre etudiant avec ou sans composition--1 Personne
R011:Etudiant(numEtu{id},#numPers)

Intervention *--concerner--1 UE
R1*:Intervention(numInter{id},ordrePass,duree,salle,#numVisitie{id},#numEtu,#numUE)

Etudiant *--suivre--* UE
R**:SuivreUE(#numEtu,#numUE)

UE *--appartenir--1 Categorie
R1*:UE(numUE{id},titre,#numCat)

UE *--participer à--* Enseignant
R**:ParticiperUE(#numUE,#numEns)


--Modèle final:

Lycée(numLycee{id},ville)
Categorie(numCat{id},nom)
Personne(numPers{id},nom,prenom,mail)
Visite(numVisite{id},titre,dateV,heureDeb,heureFin,#numLycee,#numEns)
Inscription(#numLyc,#numVisite)
Lycéen(numLyc{id},#numLycee,#numPers)
Enseignant(numEns{id},#numPers)
Etudiant(numEtu{id},#numPers)
Intervention(numInter{id},ordrePass,duree,salle,#numVisite{id},#numEtu,#numUE)
SuivreUE(#numEtu,#numUE)
UE(numUE{id},titre,#numCat)
ParticiperUE(#numUE,#numEns)



Exercice2:
Création SQL, (fichier Tables.sql)
Ordre de création:
--D'abord les tables sans clés etrangères.

Lycée(numLyc{id},ville)
Categorie(numCat{id},nom)
Personne(numPers{id},nom,prenom,mail)

--Puis les tables avec clés étrangères des tables qui existent déja.

UE(numUE{id},titre,#numCat) 
Enseignant(numEns{id},#numPers)
Etudiant(numEtu{id},#numPers)
Lycéen(numLyc{id},#numLycee,#numPers)

--Ensuite les tables avec clés étrangères des tables qui ont déja des clés étrangères.

ParticiperUE(#numUE,#numEns)
SuivreUE(#numEtu,#numUE)
Visite(numVisitie{id},titre,dateV,heureDeb,heureFin,#numLycee,#numEns)

--Dernières tables, avec clés étrangères des tables au-dessus.

Inscription(#numLyc,#numVisite)
Intervention(numInter{id},ordrePass,duree,salle,#numVisitie{id},#numEtu,#numUE)


Exercice3:
--requêtes d’insertion permettant de décrire deux visites, fichier( Exercice3.sql)








