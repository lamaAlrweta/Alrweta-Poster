 import 'package:flutter/material.dart';
 import 'package:tender_hands_app/LoginScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
 import 'DonationsScreen.dart';
import 'LoginScreen.dart';
 import 'SignupScreen.dart';
 import 'IknowafamilyScreen.dart';

class ChooseanoptionsScreen extends StatefulWidget   {
  @override
  _ChooseanoptionsScreenState createState() => _ChooseanoptionsScreenState();
     
       
    }
   class  _ChooseanoptionsScreenState extends State<ChooseanoptionsScreen> {
  @override
  Color primary = Color(0xff9D9B97);
   Color pink = Color(0xffEA8698);
    Widget build(BuildContext context) {
      return MaterialApp (
       home:Scaffold(
       backgroundColor:Colors.white,
       appBar: AppBar(  
       title:  Text("Choose an option ",style: TextStyle(color: pink)),
       leading: Icon(Icons.add_box, color: pink,size: 40),
      //  SvgPicture.asset('assets/icons/Vectoroption.svg',color: pink, width: 10, height: 10,) ,
       actions: <Widget>[

       ],

         backgroundColor:Colors.white
     ),
        body: Container(
       margin: EdgeInsets.symmetric(horizontal: 15),
       //
        child: Column(
          children: <Widget>[
        
                //  SvgPicture.asset('assets/icons/box.svg'),
  
                  //  Text('Donations', style: TextStyle(color: Colors.white, fontSize:20)),

                        // Icon(Icons.arrow_forward_ios)

                        SizedBox(height:60,width: 20,),
                Builder(builder: (context) {
                   SizedBox(height:50,width: 20,);
             return Center(
                                    
              child: MaterialButton(
                      elevation: 0,
                      height: 50,          
                     onPressed: () {
                  Navigator.of(context).pushNamed('Donations'); },
                   color: Colors.grey[200],
              child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  
                    //  SvgPicture.asset('assets/icons/box.svg'),
                                  
                    //   Text('Donations', style: TextStyle(color: Colors.white, fontSize:22)),
                      Row(
                        children: <Widget>[
                       SvgPicture.asset('assets/icons/box.svg',height: 40),
                       SizedBox(width: 25),
                         Text('Donations', style: TextStyle(color: Colors.black, fontSize:20)),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                          Icon(Icons.arrow_right_alt_outlined, color: pink, size: 40,)
                          ] ),
                       

                           ]  )
                 ), );
                },
                 
                 ),
                 SizedBox(height:20,width: 20,),
                 Builder(builder: (context) {
                   SizedBox(height:50,width: 20,);
             return Center(
                 child: MaterialButton(
                elevation: 0,
               height: 50,
                                      
               onPressed: () {
              Navigator.of(context).pushNamed('IKnowafamily');},
              color: Colors.grey[200],
              child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  
                    //  SvgPicture.asset('assets/icons/box.svg'),
                                  
                    //   Text('Donations', style: TextStyle(color: Colors.white, fontSize:22)),
                      
                      Row(
                        children: <Widget>[
                       SvgPicture.asset('assets/icons/Groupinformation.svg',height: 40,),
                       SizedBox(width: 30),
                         Text('I Know a family', style: TextStyle(color: Colors.black, fontSize:20)),

                        
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                          Icon(Icons.arrow_right_alt_outlined, color: pink, size: 40,)
                          ]

                        )

                           ]  )
                   ),  ); 
                 }, ),
                 ],
             
          
      ) ),
      ),
      routes: {
            'Donations' : (context) {
              return DonationsScreen();
            },
            'IKnowafamily' : (context) {
              return IknowafamilyScreen();
            }
            
   },
      );
   
      
   }
   
  //  child:Row(
  //                                      // mainAxisAlignment: MainAxisAlignment.center,
  //                   children: <Widget>[
                  
  //                    SvgPicture.asset('assets/icons/box.svg'),
                                  
  //                     Text('Donations', style: TextStyle(color: Colors.white, fontSize:22)),
                      
               
  //                      SvgPicture.asset('assets/icons/Groupinformation.svg'),
  //                        Text('I Know a family', style: TextStyle(color: Colors.white, fontSize:20)),

  //                       // Icon(Icons.arrow_forward_ios)


                   

  //                          ]  )
   
    // buildTextFiled( String labelText,SvgPicture  svgPicture){
    //         return Container(
    //           decoration: BoxDecoration(
    //             color:  primary,
    //             border: Border.all(color:Colors.grey[350]),
    //           ),
    //           child :TextField(decoration: InputDecoration(
    //             contentPadding: EdgeInsets.symmetric(horizontal: 10),
    //             labelText: labelText,
    //             labelStyle: TextStyle(color: Colors.black45),
    //               // SvgPicture(
                  
    //               //  color: Colors.black45,
    //               // ),
        
    //             // prefix: Icon(icon),
    //             border: InputBorder.none),
    //          ),
    //         );
   }