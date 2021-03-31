import 'package:flutter/material.dart';
import 'package:tender_hands_app/LoginScreen.dart';
import 'package:tender_hands_app/navScreen.dart';

class SignupScreen extends StatefulWidget   {
  @override
   _SignupScreenState createState() => _SignupScreenState();
     
       
   }
   
 

class  _SignupScreenState extends State<SignupScreen> {
  @override
  Color primary = Color(0xff9D9B97);
  Color pink = Color(0xffEA8698);
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar( backgroundColor:Colors.white
      ),
     body: Container(
       margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: <Widget>[
        Image.asset(
        'assets/images/Tenderhands.jpeg',
          height: 300),
            Text(
              'Tender  Hands' ,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.pink[200], fontSize: 28),
            ),
           // Text(
             // 'Sign up' ,
             // textAlign: TextAlign.center,
              //style: TextStyle(color: Colors.pink[200], fontSize: 30),
            //),
            SizedBox(height: 10),
            buildTextFiled("Your name "),
            SizedBox(height:10),
            buildTextFiled("phone number"),
            SizedBox(height:10),
            buildTextFiled("email address"),
            SizedBox(height:10),
            buildTextFiled("password"),
            SizedBox(height:10),
            Builder(builder: (context) {
                  var materialButton = MaterialButton(
              elevation: 0,
              minWidth: double.maxFinite,
              height: 50,
              onPressed: (){
                Navigator.of(context).pushNamed('nav');
              },
              color: pink,
              child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 16)),
              textColor: Colors.white,

            );
                  return Center(
                   
                  child: materialButton,
                  



                );
                }),
             
            
          
          ]),),
    )
    ,routes: {
            'nav' : (context) {
              return NavScreen();
            },
            
      },
    );
     }

buildTextFiled( String labelText){
    return Container(
      decoration: BoxDecoration(
        color:  primary,
        border: Border.all(color:Colors.grey),
      ),
      child :TextField(decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black45),

        // prefix: Icon(icon),
        border: InputBorder.none),
     ),
    );
}}