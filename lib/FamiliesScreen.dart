import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class FamiliesScreen extends StatefulWidget   {
  @override
   _FamiliesScreenState createState() => _FamiliesScreenState();
}
class _FamiliesScreenState extends State<FamiliesScreen>{
       Color primary = Color(0xff9D9B97);
      Color pink = Color(0xffEA8698);

Widget build(BuildContext context) {
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
          children: <Widget>[
           SizedBox(height:60,width: 20,),
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
                      Row(children: <Widget>[
                        Text('Ahmad'),
                           SizedBox(width: 30,height: 30,),
                      ],)
                      ,Row( 
                        children: <Widget>[
                         SvgPicture.asset('assets/icons/Grouppeople.svg',height: 20,),
                         SizedBox(width: 5,),
                          Text('8 members'),
                          SizedBox(width: 30,),
                          SvgPicture.asset('assets/icons/box.svg',height: 20,),
                          SizedBox(width: 5,),
                          Text('Food'),
                      ]
                      ),
                       SizedBox(height:10,),
                        Row( 
                        children: <Widget>[
                         Icon(Icons.location_on, color: pink, size: 30,),
                         SizedBox(width: 5,),
                          Text('Location'),
                          SizedBox(width: 30,),
                         Icon(Icons.email, color: pink,size: 30),
                         SizedBox(width: 5,),
                          Text('Contact'),
                      ]
                      ),
                    ]),
                ),

             );
           }),
           SizedBox(height:30,width: 20,),
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
                      Row(children: <Widget>[
                        Text('AL-youssof'),
                           SizedBox(width: 30,height: 30,),
                      ],)
                      ,Row( 
                        children: <Widget>[
                         SvgPicture.asset('assets/icons/Grouppeople.svg',height: 20,),
                         SizedBox(width: 5,),
                          Text('10 members'),
                          SizedBox(width: 30,),
                          SvgPicture.asset('assets/icons/box.svg',height: 20,),
                          SizedBox(width: 5,),
                          Text('Food'),
                      ]
                      ),
                       SizedBox(height:10,),
                        Row( 
                        children: <Widget>[
                         Icon(Icons.location_on, color: pink, size: 30,),
                         SizedBox(width: 5,),
                          Text('Location'),
                          SizedBox(width: 30,),
                         Icon(Icons.email, color: pink,size: 30),
                         SizedBox(width: 5,),
                          Text('Contact'),
                      ]
                      ),
                    ]),
                ),

             );
           }),
           SizedBox(height:30,width: 20,),
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
                      Row(children: <Widget>[
                        Text('Ali'),
                           SizedBox(width: 30,height: 30,),
                      ],)
                      ,Row( 
                        children: <Widget>[
                         SvgPicture.asset('assets/icons/Grouppeople.svg',height: 20,),
                         SizedBox(width: 5,),
                          Text('15 members'),
                          SizedBox(width: 30,),
                          SvgPicture.asset('assets/icons/box.svg',height: 20,),
                          SizedBox(width: 5,),
                          Text('Food'),
                      ]
                      ),
                       SizedBox(height:10,),
                        Row( 
                        children: <Widget>[
                         Icon(Icons.location_on, color: pink, size: 30,),
                          Text('Location'),
                          SizedBox(width: 30,),
                         Icon(Icons.email, color: pink,size: 30),
                         SizedBox(width: 5,),
                          Text('Contact'),
                      ]
                      ),
                    ]),
                ),

             );
           }),
           SizedBox(height:30,width: 20,),
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
                      Row(children: <Widget>[
                        Text('AL-khaild'),
                           SizedBox(width: 30,height: 30,),
                      ],)
                      ,Row( 
                        children: <Widget>[
                         SvgPicture.asset('assets/icons/Grouppeople.svg',height: 20,),
                         SizedBox(width: 5,),
                          Text('9 members'),
                          SizedBox(width: 30,),
                          SvgPicture.asset('assets/icons/box.svg',height: 20,width: 20,),
                          SizedBox(width: 5,),
                          Text('Clothes'),
                      ]
                      ),
                       SizedBox(height:10,),
                        Row( 
                        children: <Widget>[
                         Icon(Icons.location_on, color: pink, size: 30,),
                          Text('Location'),
                          SizedBox(width: 30,),
                         Icon(Icons.email, color: pink,size: 30),
                         SizedBox(width: 5,),
                          Text('Contact'),
                      ]
                      ),
                    ]),
                ),

             );
           }),
          ]








       ),




        ),







 ),




);



}



}