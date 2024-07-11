import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A368),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            Text(
              "AgriLinker",
              style: TextStyle(
                  color:Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Buy agriculture products",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                // //pushreplacednamed so it can not goes back to splash screen
                Navigator.pushReplacementNamed(context, "login");
              },
              //for animation in container
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white, width: 1),
                    color: Color(0xFF00A368)),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                // //pushreplacednamed so it can not goes back to splash screen
                Navigator.pushReplacementNamed(context, "register");
              },
              //for animation in container
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                   // border: Border.all(color: Colors.white, width: 1),
                    color: Colors.white),
                child: Text(
                  "Sing Up",
                  style: TextStyle(
                      color: Color(0xFF00A368),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
