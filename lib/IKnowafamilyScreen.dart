import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tender_hands_app/ChooseanoptionsScreen.dart';
import 'package:tender_hands_app/DonationsScreen.dart';



class IknowafamilyScreen extends StatefulWidget   {
  @override
   _IknowafamilyScreenState createState() => _IknowafamilyScreenState();
}
class _IknowafamilyScreenState extends State<IknowafamilyScreen>
   {
     String groupValue;
     Color _bulbColor = Colors.black;

     Color primary = Color(0xff9D9B97);
      Color pink = Color(0xffEA8698);

      Widget build(BuildContext context) {
        
    // TODO: implement build
    return MaterialApp (
          home:Scaffold(
       backgroundColor:Colors.white,
        appBar:AppBar(
          title: Text('Families in need',style:TextStyle(color:Colors.black)),
           leading:  Row(
             children: <Widget>[
               SizedBox(width: 10,),
               SvgPicture.asset('assets/icons/homehand.svg',height: 35,)
             ]
             ),
           actions: <Widget>[

       ],

         backgroundColor:Colors.white 
        ),
          body: Container( 
          margin: EdgeInsets.symmetric(horizontal: 15),
           child: Column(
              // mainAxisAlignment: MainAxisAlignment.Center,
               children: <Widget>[
             SizedBox(height: 30,),
             Row(children: <Widget>[ 
                SvgPicture.asset('assets/icons/box.svg',height: 30),
                 Text('What does the family need ?' ,textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.black, fontSize: 20),),
                 SizedBox(width: 10,height: 20,),
              ]),
              SizedBox(height: 20,),
              Row( children: <Widget>[
                Radio(value: 'Food', 
                groupValue: groupValue, 
                activeColor: pink,
                onChanged: (value){
                setState(() {
                  this.groupValue=value;
                });
                
                 } ),
                 Text("Food",textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.black, fontSize: 20),),
                  SizedBox(width:30),], 
                  ),
                   Row( children: <Widget>[
                Radio(value: 'Book', 
                groupValue: groupValue, 
                 activeColor: pink,
                onChanged: (value){
                setState(() {
                  this.groupValue=value;
                });
                
                 } ),
                 Text("Book",textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.black, fontSize: 20),),
                  SizedBox(width:30),
                  
              ],
           ),
            Row( children: <Widget>[
                Radio(value: 'Clothes', 
                groupValue: groupValue, 
                 activeColor: pink,
                onChanged: (value){
                setState(() {
                  this.groupValue=value;
                });
                
                 } ),
                 Text("Clothes",textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.black, fontSize: 20),),
                  SizedBox(width:30),
                  
              ],
           ),
         // SizedBox(width: 10,height: 30,),
          SizedBox(height: 10,width: 10,),
          Row(children: <Widget>[
         // SizedBox(width: 10),
          Row(children:<Widget> [  
            SvgPicture.asset('assets/icons/Grouppeople.svg',height: 25),

          ],),
        Text('Number of family members', 
        style: TextStyle(color: Colors.grey, fontSize:20)),
               ],),
               SizedBox(height: 10,),
                TextField(decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                filled: true,
                fillColor: Colors.black12,
                labelStyle: TextStyle(color: Colors.black45),
        
                // prefix: Icon(icon),
                border: InputBorder.none),
             ),
         
        //  SizedBox(height:50,width: 50,);
      
          
       //  SizedBox(width: 10,height: 20,),
         SizedBox(height: 10,width: 10,),
         Row(children: <Widget>[
       Icon(Icons.smartphone, color: pink, size: 30,),
        Text('Contact', 
       style: TextStyle(color: Colors.grey, fontSize:20)),
               ],), 
          SizedBox(height: 10,),
        //  Builder(builder: (context) {
        //  SizedBox(height:50,width: 20,);
        //  return Center(
        //     child: MaterialButton(
        //         elevation: 0,
        //        height: 50,                     
        //        onPressed: () {
        //       Navigator.of(context).pushNamed('Number of family members');},
        //       color: Colors.grey[300],
        //       //  child: Column(
        //       //  children: <Widget>[
        //       //     Row(children: <Widget>[
        //       //        SvgPicture.asset('assets/icons/Vector.svg',height: 50,),
                     
        //       //     ]
        //       //     ),

        //       //  ]
        //       //  ),

        //  ));
        //  }),
         TextField(decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                filled: true,
                fillColor: Colors.black12,
                labelStyle: TextStyle(color: Colors.black45),
        
                // prefix: Icon(icon),
                border: InputBorder.none),
             ),
         SizedBox(height: 10,width: 10,),
        Row(children: <Widget>[
           Icon(Icons.location_on, color: pink, size: 30,),
        Text('Location', 
       style: TextStyle(color: Colors.grey, fontSize:20)),
               ],),
           SizedBox(height: 10,),
         Builder(builder: (context) {
         SizedBox(height:50,width: 20,);
         return Center(
            child: MaterialButton(
                   
                elevation: 0,
               height: 50,                     
               onPressed: () {
              Navigator.of(context).pushNamed('Number of family members');},
              color: Colors.grey[300],
               child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Row(children: <Widget>[
                   // mainAxisAlignment: MainAxisAlignment.end,
                    Icon(Icons.arrow_right_alt_outlined, color:Colors.black12, size: 40,)
                  ]
                  ),

               ]
               ),

         ));
         }),
          SizedBox(height: 30,width: 10,),
          Builder(builder: (context){
                        return Center(
                          child: MaterialButton(
                           elevation: 0,
                           height: 50,
                           minWidth: 360,                     
                         onPressed: () {
                       Navigator.of(context).pushNamed('IKnowafamily');},
                           color: pink,
                           child: Text("post",style: TextStyle(color:Colors.white,fontSize: 20)),
                             textColor: Colors.white,
                          ),  );
                   }),
         
         
         ],
         ),
         

         ),
         
        

    ));

            
          
            

                     
         
    
      }


  } 
  
  // Row( children: <Widget>[ 
          // Text('Families in need',style:TextStyle(color:Colors.black)),
          //  ] ),
          //  SizedBox(height:60,width: 20,),
          //   Builder(builder: (context) {
          //     Row(children: <Widget>[
          //     mainAxisAlignment: MainAxisAlignment.Center,
          //       Radio(value: 'pink', groupValue: colorGroupVlue, onChanged: null),
          //       Text('Food')

          //     ]);
          //     Row(children: <Widget>[
          //    Radio(value: 'pink', groupValue: colorGroupVlue, onChanged: null),
          //       Text('Clothes')
          //     ]);
          //     Row(children: <Widget>[
          //    Radio(value: 'pink', groupValue: colorGroupVlue, onChanged: null),
          //       Text('Book')
          //     ]);
               







          //   }),