import 'package:flutter/material.dart';
import 'package:myapp/itemspage.dart';

class CategoriesWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
          children:[
            Text("Category",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color:  Color(0xFF00A368)
            )
            ) 
          ],
        ),
        ),
        SizedBox(
          height: 1000,
       child: 
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          children: [
            for (int i=0;i<8;i++)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4
                  )
                ]
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>itemspage(),
                  ),

                      );

                     },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset("images/$i.jpg",
                      width: 110,
                      height: 110,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,

                    child: Text("ItemTitle",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555)
                    ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$20",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00A368),

                      ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding:EdgeInsets.all(8) ,
                          decoration: BoxDecoration(
                            color: Color(0xFF00A368),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.add_shopping_cart,
                          color: Colors.white,
                          size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  )
                ],
              ),
            )
          ],
          ) )
      ],
    );

  }
}