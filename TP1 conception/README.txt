Binome:(groupe 8)


Avancement du TP1:
Exo1:
--Les entités:
-D'abord on a créé 5 entités en tout: FichePresence, Coureur,CourseCycliste, Penalité,Bonus.
ensuite on a lié CourseCycliste à Coureur car logiquement un coureur peut etre inscrit dans  une ou plusieurs courses cycliste,
et pour le coureur on lui a attribué les propriétés Nom, Prénom et numéro qui servira d'identifiant,
on a créé l'entité FichePresence qui est une classe porteuse d'informations(Signature,Temps,Rang) entre le coureur et la courseCycliste
car c'est elle qui détermine si le coureur peut participer (est présent) ou pas à une course cycliste.


-Pour l'entité Bonus a qui on a attribué la propriété valeur, on l'a lié à CourseCycliste et Coureur car c'est la course qui attribut le bonus au coureur,
De meme pour Pénalité.

--Remarques:(Réponse aux questions)
-La fiche de présence représente en géneral les participants c'est à dire les coureurs qui participent à une course cycliste donnée

-Le rang et le temps sont des attributs(propriétés) dans la fiche de présence car chaque course cycliste a un rang particulier et un temps associé à cette course là.


--Les cardinalités:
Entre la classe CourseCycliste et Coureur:
- un coureur participe à 0 ou plusieurs courses (*)
- une course est faite par 0 ou plusieurs coureurs(*)


Entre la classe CourseCycliste et Bonus:
- une course peut accorder un seul bonus(1)
- un bonus est accordé dans 1 course(1)


Entre la classe CourseCycliste et Penalité:
- une course accorde 0 ou plusieurs pénalités(0..*)
- une pénalité est attribué dans 1 ou plusieurs courses (1..*)

Entre la classe Coureur et Bonus:
- un coureur recoit un  bonus(1)
- un Bonus est attribué à 0 ou plusieurs coureurs (*)

Entre la classe Coureur et Pénalité:
- un coureur recoit une pénalité(1)
- une pénalité est accordé à 1 ou plusieurs coureurs(1..*)



Exo2:
--Les entités:
-D'abord on a créé 6 entités en tout:Recette, Etape, Produit, Quantité, Ustensiles,Ingrédients.
-on attribué les propriétés numéro et Temps à Etape, puis les propriétés Entrées,Plats,Desserts,Cocktails à Recette.
Puis Nombre à Produit et enfin, mesure à Quantité.
-
--Remarques:(Réponse aux questions)
-Peut-on s’assurer au niveau du MCD que les quantités utilisées dans les étapes sont cohérentes avec la quantité globale renseignée au niveau de la recette?
Non, du coup nous avons choisi de mettre Quantité en entité et non pas en attribut de la classe Ingrédient car ce n'est pas atomyque, on ignore l'unité de mesure(enfin, 
il y en a plusieurs ...)

-Autres propriétés qui peuvent se retrouver avec des valeurs incohérentes dans le modèle :
on a identifié le tempsApproximatif car chaque étape est associée à un temps mais le tempsApproximatif représente le temps global que prennent les étapes pour
la réalisation d'une recette. 




--Les cardinalités:
Entre Recette et Etape:
-une recette est composée de 0 ou plusieurs étapes (*)
-une étape est associée à une recette (1)

Entre Recette et Catalogue:
- un catologue est généré par 0 ou plusieurs recettes (*)
- une recette est contenue dans 1 catalogue

Entre Recette et Produit:
-une recette indique 0 ou plusieurs produits
-un produit est utilisé par une recette 

Entre Recette et Ustensiles:
- une recette a 0 ou plusieurs ustensiles (*)
- un ustensile est utilisé par une recette(1)

Entre Etape et Ingrédients:
-une étape est précisé par 0 ou plusieurs ingrédients(*)
-un  ingrédient est utilisé dans 0 ou plusieurs étapes(*)

Entre Etape et Ustensiles:
-une étape précise 0 ou plusieurs ustensibles(*)
-un ustensible est utilisé dans une étape(1)

Entre Etape et TempsApproximatif:
-une étape a un temps précis(1)
-un temps est attribué à une étape(1)

Entre Produit et Quantité:
-un produit est exprimé par 0 ou plusieurs quantités(*)
-une quantité est associée à 0 ou plusieurs quantités(*)

Entre Quantité et Ingrédients:
-une quantité est attribuée à un ingrédient(1)
-un ingrédient a une quantité précise (1)

