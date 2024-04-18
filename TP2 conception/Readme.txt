Binome:(groupe 8)



Avancement du TP2:


Exo2:
-Les entités:
-EntrepriseCC , ProducteursLocaux, PointsVente, Clients, Commande,
Produits, Catégorie, Livraison(interface), BonLivraison, TypeProduit, Quantité.


-Les Cradinalités:
-Entre EntrepriseCC et ProducteursLocaux:
-1 entreprise peut répértorier plusieurs Producteurs locaux.

-Entre ProducteursLocaux et PointsVente:
-plusieurs producteurs locaux peuvent avoir plusieurs points de vente.

-Entre ProducteursLocaux et Produits:
- 1 produit n'est proposé que par 1 seul producteur local.

-Entre EntrepriseCC et Clients:
-1 entreprise a plusieurs clients.

-Entre Clients et PointsVente:
-plusieurs clients n'ont qu'un seul point de vente.

-Entre PointsVente et Livraison:
-Un client ne peut commander que les produits qui sont disponibles auprès des
producteurs associés au point de vente concerné par la livraison

-Entre Produits et Catégorie:
-1 produit n'a qu'une seule catégorie prédéfinie.

-Entre Produits et Commande:
-1 commande contient une liste de plusieurs produits.

-Entre Produits et Quantité:
-1 produit n'a qu'une seule quantité.

-Entre Livraison et BonLivraison:
-chaque livraison etabli un bon de livraison.

-Entre Produits et BonLivraison:
-chaque produit a un bon de livraison.

-Entre Produits et TypeProduit:
-chaque produit a un type.




-Réponse aux questions:(remarques)
question: Un client ne peut commander que les produits qui sont disponibles auprès des
producteurs associés au point de vente concerné par la livraison. Est-ce que ce fait peut
être encodé facilement dans le MCD ?
réponse:
J'ai essayé de créer une interface indépendante pour livraison et l'associer au point
de vente auquel le client peut commander, je pense que ca pourrait faire l'affaire.



