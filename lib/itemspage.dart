import 'package:flutter/material.dart';
import 'package:myapp/itemPage.dart';



class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.description, required this.price, required this.imageUrl});
}

class itemspage extends StatelessWidget {
  final List<Product> products = [
    Product(
       name: "Pomme",
    description: "Fruit frais de saison",
    price: 2.99,
    imageUrl: "images/1.jpg",
    ),
    Product(
       name: "Carotte",
    description: "Légume biologique",
    price: 1.49,
    imageUrl: "myapp/images/2.jpg"
      
    ),
    Product(
       name: "Carotte",
    description: "Légume biologique",
    price: 1.49,
    imageUrl: "myapp/images/2.jpg"
      
    ),
  ];
  
@override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          title: Text('Products'),
          leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color(0xFF00A368),
                ),
              ),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("Image"),
              title: Text(products[index].name,style: TextStyle(
                          color: Color(0xFF00A368),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
              subtitle: Text(products[index].description),
              onTap: () {
                // Naviguer vers une page de détails du produit
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>   itemPage(products: products[index],),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.network(product.imageUrl),
            SizedBox(height: 20),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              product.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

