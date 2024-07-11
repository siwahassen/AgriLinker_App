



class Produit {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Produit({required this.name, required this.description, required this.price, required this.imageUrl});
}
List<Produit> Produits = [
  Produit(
    name: "Pomme",
    description: "Fruit frais de saison",
    price: 2.99,
    imageUrl: "images/1.jpg",
  ),
  Produit(
    name: "Carotte",
    description: "Légume biologique",
    price: 1.49,
    imageUrl: "myapp/images/2.jpg"
    ),
  // Ajoutez d'autres produits ici...
];
