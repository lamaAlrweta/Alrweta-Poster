import 'package:flutter/material.dart';
import 'package:tender_hands_app/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'LoginScreen.dart';
import 'SignupScreen.dart';

void main  () async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(App());
}
   class App extends StatelessWidget{
    @override
    Color primary = Color(0xffEA8698);
  Widget build(BuildContext context) {
    // TODO: implement build
      return MaterialApp (
          home: Scaffold(
           backgroundColor: Colors.white,
          //appBar: AppBar(title: Text("Tender Hands",),backgroundColor: primary,
         // centerTitle: true,
           //    ),
          body:  Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //We take the image from the assets
                Image.asset(
               'assets/images/Tenderhands.jpeg',
                  height: 250,
               ),
                SizedBox(
                  height: 20,
                ),
                //Texts and Styling of them
                Text(
                  'Tender Hands' ,
                 textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.pink[200], fontSize: 28),), //Text('Hands' ,textAlign: TextAlign.center,
                //  style: TextStyle(color: Colors.black, fontSize: 28),),
                SizedBox(height: 50),

                // SizedBox(
                //   height: 30,
                //   width: 30,
                // ),
                // //Our MaterialButton which when pressed will take us to a new screen named as
                // //LoginScreen
                // SizedBox(height:15),
                Builder(builder: (context) => Center(
                  
                  child: MaterialButton(
                    elevation: 0,
                    height: 50,
                    
                    onPressed: () {
                      Navigator.of(context).pushNamed('login');
                    },

                    color: primary,
                    child:
                     // mainAxisAlignment: MainAxisAlignment.center,

                        Text('Log in', style: TextStyle(color: Colors.white, fontSize:22)),

                        // Icon(Icons.arrow_forward_ios)


                    textColor: Colors.white,

                  ),
                 
                      

                )),
                 SizedBox(height:15),
                Builder(builder: (context) => Center(
                  
                  child: MaterialButton(
                    elevation: 0,
                    height: 50,
                    
                    onPressed: () {
                      Navigator.of(context).pushNamed('signup');
                    },

                    color: primary,
                    child:
                     // mainAxisAlignment: MainAxisAlignment.center,

                        Text('Sign up', style: TextStyle(color: Colors.white, fontSize:20)),

                        // Icon(Icons.arrow_forward_ios)


                    textColor: Colors.white,

                  ),
                 
                      

                )), //Navigator.push(context,
              // MaterialPageRoute(builder: (_) => Loginscreencreen()));
              ],
            ),

          ),
      )
              ,routes: {
            'login' : (context) {
              return LoginScreen();
            },
            'Signup' : (context) {
              return SignupScreen();
            }
            
      },
            
      );









  }


   }



//body: Center(
//child: Container(
//  height: 300,
// width: 300,
//    alignment: Alignment(0.9,-0.98),
//child: image,