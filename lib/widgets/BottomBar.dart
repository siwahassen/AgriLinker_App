import 'package:flutter/material.dart';
import 'package:myapp/itemspage.dart';

class BottomBar extends StatelessWidget{
  final Product products;
  BottomBar({required this.products});
  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
        height: 70,
        
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('\$${products.price.toStringAsFixed(2)}',
              style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00A368)
              ) ,
            ),
            // Creating custom Button Using Ink*
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF00A368),
                  borderRadius: BorderRadius.circular(30),

                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            )
            



          ],),
      ),
    );

  }
}