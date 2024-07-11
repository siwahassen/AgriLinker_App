import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/BottomCartSheet.dart';
import 'package:myapp/widgets/CategoriesWidgets.dart';
import 'package:myapp/widgets/itemswidgets.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
     
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          // Actions à effectuer lors de l'appui sur l'icône de menu
        },
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.cart,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                // Actions à effectuer lors de l'appui sur l'icône de panier
                showSlidingBottomSheet(context,
                           builder: (context){
                            return SlidingSheetDialog(
                              elevation: 8,
                              cornerRadius: 16,
                              builder: (context, State){
                                return BottomCartSheet();
                              }
                            );
                           });
                }
            ),
             Positioned(
              right: 0,
              child: badges.Badge(
              //  badgeColor: Colors.red,
                badgeContent: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}



class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Color(0xFF00A368),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            



            //welcome Text
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  //Text " What do you want to buy ?"
                  Text(
                    " What do you want to buy ?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
            //Search widget
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search here ...",
                          border: InputBorder.none),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.filter_list)
                ],
              ),
            ),
            //Products widgets
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [CategoriesWidgets(),
                itemswidgets()
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
