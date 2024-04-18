ATTALAH MOHAMED

Exercice1:
1. Modélisation logique des tables (entités):

-Enseignant(numEns{id},nom,prenom,mailUniv,telPerso)
-Convention(numConv{id},date)
-Etudiant(numEtud{id},nom,prenom,mailPerso,telPerso)
-Stage(numStage{id},titre)
-Candidature(numCand{id},date)
-Prerequis(numPre{id},description)
-Formation(numFormation{id},nom)
-Inscription(annee,date)
-Evaluation(acceptation,justification,date)
-Referent(numRef{id},nom,prenom,mailEntr,telPerso)
-Entreprise(nom{id},ville{id})
-Fonction(numFonction{id})  //on a créé une clé primaire pour Fonction

# Remarque: {id}: clé primaire.


2.Les relations qui modifieront les clés primaires découlant des identifiants des
entités: (les compositions: les clés primaires de l'entité forte integrent la clé primaire de l'entité faible )
Prerequis *--Requerir--1(composition) Stage
--->  Prerequis(numPre{id},description,#numStage{id})

Entreprise 1(composition)--Désigner--* Referent
---> Referent(numRef{id},nom,prenom,mailEntr,telPerso,#nom{id},#ville{id})

# Remarque: #num{id} : clé primaire d'une entité faible ayant intégré la clé primaire d'une entité forte, découlant d'une composition.

3.ordre adéquat pour la réalisation de transformations de relations en tables:
D'abord les relations contenant une composition, ensuite les autres.




4. Relations-Associations:
Prerequis *--Requerir--1 Stage
R1*c: Prerequis(numPre{id},description,#numStage{id}) //D'abord les compositions

Entreprise 1(composition)--Désigner--* Referent
R1*c: Referent(numRef{id},nom,prenom,mailEntr,telPerso,#nom{id},#ville{id}) //composition


Enseignant 1--Signer--* Convention
R1*: Convention(numConv{id},date,#numEns)

Etudiant 1--Signer--* Convention
R1*: Convention(numConv{id},date,#numEns,#numEtud)

Convention 0..1--Donner lieu-- 1 Stage
R011: Convention(numConv{id},date,#numEns,#numEtud,#numStage)

Referent 1--Signer--* Convention
R1*: Convention(numConv{id},date,#numEns,#numEtud,#numStage,#numRef,#nom{id},#ville{id}) //premier impact de la composition

Etudiant 1--Déposer--* Candidature
R1*: Candidature(numCand{id},date,#numEns,#numEtud)

Stage 1--Concerner--* Candidature
R1*: Candidature(numCand{id},date,#numEns,#numEtud,#numStage)

Etudiant *--S'inscrire--1..* Formation
R**p: Inscription(annee,date,#numEtud,#numFormation) //on construit une nouvelle table en y migrant toutes les clés primaires des entités impliquées en tant que clés étrangères

Candidature *--Evaluer--0..1 Referent
R01*p: Candidature(numCand{id},date,#numEns,#numEtud,#numStage,#numRef(NULL),#nom(NULL),#ville(NULL),acceptation,justification,date)) // on migre les clés primaires de l'entité faible vers l'entité forte en tant que clés étrangères qui peuvent etre NULL

Referent *--Avoir--1..* Fonction
R**: FoncRef(#numRef,#nom,#ville,#numFonction)

Entreprise 1--Proposer--1..* Stage
R**: EntreStage(#nom,#ville,#numStage)


Exercice2:
1.Modifications:
Creer une entité Personne:
Personne(numPers{id},nom,prenom,telPerso)
Car les informations communes entre les trois entités Referent,
 Enseignant, Etudiant sont : nom, prenom et telPerso.


2.Tables impactées par ces modifications:
Etudiant, Enseignant, Referent.






