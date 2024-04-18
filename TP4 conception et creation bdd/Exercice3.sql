--Exercice 3:

--La première visite doit être organisée dans le lycée Bahut, la deuxième dans le lycée
--Céely:
INSERT INTO Lycee VALUES (1,'Bahut');
INSERT INTO Lycee VALUES (2,'Céely');

--Le même enseignant s’occupe de l’organisation des deux visites:
INSERT INTO Visite VALUES (1,1,1,'2023-02-23','08:00:00','10:00:00');
INSERT INTO Visite VALUES (2,2,1,'2023-02-23','12:00:00','14:00:00');

--Chaque visite contiendra au minimum 2 interventions:

INSERT INTO Intervention(numInter,numVisite) VALUES (1,1)
INSERT INTO Intervention(numInter,numVisite) VALUES (2,1)

INSERT INTO Intervention(numInter,numVisite) VALUES (1,2)
INSERT INTO Intervention(numInter,numVisite) VALUES (2,2)

--Au moins une UE (donc une intervention) sera présentée dans les deux visites:
INSERT INTO Intervention(numInter,numVisite) VALUES (1,1)
INSERT INTO Intervention(numInter,numVisite) VALUES (1,2)

--Au moins deux UE seront représentées dans la base dont une sera associée à 2
--enseignants et une autre à un seul enseignant:
INSERT INTO PaticiperUE(numEns,numUE) VALUES (1,1)
INSERT INTO PaticiperUE(numEns,numUE) VALUES (2,1)

INSERT INTO PaticiperUE(numEns,numUE) VALUES (3,2)

--Vous créerez au moins une personne qui est un lycéen inscrit dans le lycée Bahut et est
--inscrit dans une visite réalisée dans ce lycée:
INSERT INTO Lyceen(numLyc,numPers,numLycee) VALUES (1,1,1)
