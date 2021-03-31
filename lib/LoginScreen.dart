import 'package:flutter/material.dart';
import 'package:tender_hands_app/ChooseanoptionsScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tender_hands_app/LoginScreen.dart';
import 'package:tender_hands_app/barScreen.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final auth = FirebaseAuth.instance;
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
        
                    SizedBox(height:15),
                    buildTextFiled("phone number or email address"),
                    SizedBox(height:15),
                    buildTextFiled("password"),
                    SizedBox(height:30),
                    
                    Builder(builder: (context) {
                  var materialButton = MaterialButton(
                      elevation: 0,
                      minWidth: double.maxFinite,
                      height: 50,
                      onPressed: () {
                        Navigator.of(context).pushNamed('choose');
                        },
                      color: pink,
                      child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 16)),
                      textColor: Colors.white,
        
                    );
                  return Center(
                   
                  child: materialButton,
                  



                );
                }),
                    Text("continue as a gust",style: TextStyle(color: Colors.pink[200],fontSize: 30)
        
                ),
        
            //Our MaterialButton which when pressed will take us to a new screen named as
            //LoginScreen
        
                 ],  ),
                   ),
                 )
                 ,routes: {
            'choose' : (context) {
              return barScreen();
            },
            
      },
      );
                 }
          _buildFooterLogo() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("continue as a gust",style: TextStyle(color: Colors.pink[200],fontSize: 200)
        
                ),
              ],
            );
          }
          buildTextFiled( String labelText){
            return Container(
              decoration: BoxDecoration(
                color:  primary,
                border: Border.all(color:Colors.grey[350]),
              ),
              child :TextField(decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                labelText: labelText,
                labelStyle: TextStyle(color: Colors.black45),
        
                // prefix: Icon(icon),
                border: InputBorder.none),
             ),
            );
          }
        
         
}


