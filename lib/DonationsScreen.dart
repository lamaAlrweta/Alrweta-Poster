import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonationsScreen extends StatefulWidget   {
  @override
   _DonationsScreenState createState() => _DonationsScreenState();
     
       
   }
   class _DonationsScreenState extends State<DonationsScreen>
   {
     Color primary = Color(0xff9D9B97);
   Color pink = Color(0xffEA8698);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp (
      home:Scaffold(
       backgroundColor:Colors.white,
       appBar: AppBar(  
          title:  Text("Donation informations ",style: TextStyle(color:Colors.black)),
          leading: Icon(Icons.arrow_back_outlined,color:pink,size: 35,),
           actions: <Widget>[
       ],
          backgroundColor:Colors.white
       ),
        body: Container( 
          margin: EdgeInsets.symmetric(horizontal: 15),
           child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                SizedBox(height: 30,),
            Row(children: <Widget>[ 
              Text('Select photo:' ,textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.black, fontSize: 20),),
                 SizedBox(width: 10,height: 10,),
              
           
              ]),
              SizedBox(height: 10,),
              Row(children:<Widget> [
               SvgPicture.asset('assets/icons/addImage.svg',height: 100,),
                SizedBox(width: 30),
              ],),
               SizedBox(height:20),
              Row(children:<Widget>[
                 Text('Category:' ,textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.black, fontSize: 20),),
                 SizedBox(width: 10,height: 20,),
                  

              ],
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
              color: Colors.black12,
              child:Column(
                  children: <Widget>[
                  Row(children: <Widget>[
                     Icon(Icons.keyboard_arrow_down, color:Colors.black, size: 40,)
                     
                  ]
                  ),
                
                      
                  ]
              )
             
                 ),

                 );
                  } ),
           SizedBox(height: 10,width: 10,),
                     Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text('Name of Category:', style: TextStyle(color: Colors.black, fontSize:20)),
                        ],),
                       SizedBox(height:20,width: 20,),
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
                         SizedBox(width: 20),
                         Text('Quantity:', style: TextStyle(color: Colors.black, fontSize:20)),
                        ],),
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
                      SizedBox(width: 20),
              Text('Location:', style: TextStyle(color: Colors.black, fontSize:20)),
             ],),
                 SizedBox(width: 10,height: 10,),
                   Builder(builder: (context){
                       SizedBox(height:50,width: 20,);
                        return Center(
                          child: MaterialButton(
                           elevation: 0,
                           height: 50,                     
                         onPressed: () {
                       Navigator.of(context).pushNamed('IKnowafamily');},
                           color: Colors.black12,
                           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Row(children: <Widget>[
                   // mainAxisAlignment: MainAxisAlignment.end,
                    Icon(Icons.arrow_right_alt_outlined, color:Colors.black, size: 40,)
                  ]
                  ),

               ]
               ),
                          ),  );
                   }),
                    SizedBox(width: 10,height: 10,),
                   Builder(builder: (context){
                       SizedBox(height:50,width: 20,);
                        return Center(
                          child: MaterialButton(
                           elevation: 0,
                           height: 50,  
                         minWidth: 360,                      
                         onPressed: () {
                       Navigator.of(context).pushNamed('IKnowafamily');},
                           color: Colors.pink[300],
                           child: Text("post",style: TextStyle(color: Colors.white,fontSize: 16)),
                             textColor: Colors.white,
                          ),  );
                   }),
                        ],
                        
           
           )),
        ),












      );
       
       
      //  buildTextFiled( String labelText){
      //       return Container(
      //         decoration: BoxDecoration(
      //           color:  primary,
      //           border: Border.all(color:Colors.grey[350]),
      //         ),
      //         child :TextField(decoration: InputDecoration(
      //           contentPadding: EdgeInsets.symmetric(horizontal: 10),
      //           labelText: labelText,
      //           labelStyle: TextStyle(color: Colors.black45),
        
      //           // prefix: Icon(icon),
      //           border: InputBorder.none),
      //        ));}
       
       















    
  }
     
   
   }