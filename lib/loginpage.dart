 import 'package:flutter/material.dart';
import 'package:myapp/firstPage.dart';
import 'package:myapp/registerpage.dart';


 class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: [
          Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

          color: Color(0xFF00A368)
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 60.0,left:22),
          child: Text('Hello \nSign in!',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),),
      Padding(
        padding: EdgeInsets.only(top: 200.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight:Radius.circular(40)
            ),
            color: Colors.white,
          ),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check,color:Colors.grey) ,
                    label: Text('Gmail',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00A368),
                    ),)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off,color:Colors.grey) ,
                    label: Text('Password',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00A368),
                    ),)
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerRight,
                  child:Text('Forgot Password ?',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xff281537),
                    ),),
                ),
                SizedBox(height: 70,),
                Container(
                  height: 55,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF00A368)
                  ),
                  child:InkWell(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => firstPage(),
                  ),

                      );

                     },
                    child: Center(child: Text('SIGN IN ',style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                  ),
                  ) ,)
                ),
                SizedBox(height: 150,),
              Align(
                alignment: Alignment.bottomRight,
                child:
                    Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Don't have account ?",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => registerpage()
                  ),

                      );

                     },
                     child:
                    Text("Sign up",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black
                      ),),
                    ),  
                  ],
                ),)

              
              ],
            ),
          ),
        ),
      )
        ],
      )
    );
  }
 }