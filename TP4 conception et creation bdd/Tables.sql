--D'abord les tables sans clés etrangères.


create table Lycee ( 
      numLycee INTEGER PRIMARY KEY,
      ville text
      );

create table Categorie ( 
      numCat INTEGER PRIMARY KEY,
      nom text
      );

create table Personne ( 
      numPers INTEGER PRIMARY KEY,
      nom text,
      prenom text,
      mail text
     );

--Puis les tables avec clés étrangères des tables qui existent déja.

create table UE (
      numUE INTEGER PRIMARY KEY,
      titre text,
      numCat Integer,
      FOREIGN KEY (numCat) 
	references Categorie(numCat)
     );

create table Enseignant (   
      numEns INTEGER PRIMARY KEY,
      numPers Integer,
      FOREIGN KEY (numPers) 
	references Personne(numPers)
);

create table Etudiant ( 
      numEtu INTEGER PRIMARY KEY,
      numPers Integer,
      FOREIGN KEY (numPers)
	references Personne(numPers)
); 
create table Lyceen ( 
      numLyc INTEGER PRIMARY KEY,
      numPers Integer,
      numLycee Integer,
      FOREIGN KEY (numLycee) 
	references Lycee(numLycee),
      FOREIGN KEY (numPers) 
	references Personne(numPers)
);

--Ensuite les tables avec clés étrangères des tables qui ont déja des clés étrangères.

create table ParticiperUE (
      numEns Integer,
      numUE Integer,
      FOREIGN KEY (numUE) 
	references UE(numUE),
      FOREIGN KEY (numEns) 
	references Enseignant(numEns)
);

create table SuivreUE (
      numUE Integer,
      numEtu Integer,
      FOREIGN KEY (numEtu) 
	references Etudiant(numEtu),
      FOREIGN KEY (numUE)
	references UE(numUE)
);

      
create table Visite (  
      numVisite INTEGER PRIMARY KEY,
      titre text,
      dateV text,
      heureDeb text,
      heureFin text,
      numEns Integer,
      numLycee Integer,
      FOREIGN KEY (numEns) 
	references Enseignant(numEns),
      FOREIGN KEY (numLycee) 
	references Lycee(numLycee)
);

--Dernières tables, avec clés étrangères des tables au-dessus.
  
create table Inscription ( 
      numLyc Integer,
      numVisite Integer, 
      FOREIGN KEY (numLyc) 
      references Lyceen(numLyc),
      FOREIGN KEY (numVisite) 
      references Visite(numVisite)
);
     
     
     
create table Intervention( 
      numInter INTEGER PRIMARY KEY,
      ordrePass text,
      duree text,
      salle text,
      numVisite Integer,
      numEtu Integer,
      numUE Integer,
      FOREIGN KEY (numVisite) 
	references Visite (numVisite),
      FOREIGN KEY (numEtu) 
	references Etudiant(numEtu),
      FOREIGN KEY (numUE)
	references UE(numUE)
);
     
     

      
  

