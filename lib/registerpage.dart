 import 'package:flutter/material.dart';
import 'package:myapp/loginpage.dart';


 class registerpage extends StatelessWidget{
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
          child: Text('Create Your\n Account',
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
            padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 
                 TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check,color:Colors.grey) ,
                    label: Text('FullName',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00A368),
                    ),)
                  ),
                ),
               
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check,color:Colors.grey) ,
                    label: Text('Phone',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00A368),
                    ),)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check,color:Colors.grey) ,
                    label: Text('Gmail',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color(0xFF00A368),
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
               
                SizedBox(height: 70,),
                Container(
                  height: 55,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF00A368),
                  ),
                  child:Center(child: Text('SIGN UP',style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),),) ,
                ),
                SizedBox(height: 100,),
              Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("You have an account?",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),),

                    InkWell(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => loginpage()
                  ),
                      );
                     },
                     child:
                    Text("Sign in",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black
                      ),),
                    ),  
                  ],
                ),

              )
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