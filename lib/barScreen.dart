import 'package:flutter/material.dart';
import 'package:tender_hands_app/FamiliesScreen.dart';

import 'ChooseanoptionsScreen.dart';
import 'DonationsScreen.dart';

class barScreen extends StatefulWidget   {
  @override
   _barScreenState createState() => _barScreenState();
}
class _barScreenState extends State<barScreen>
   {
     String groupValue;
     Color _bulbColor = Colors.black;

     Color primary = Color(0xff9D9B97);
      Color pink = Color(0xffEA8698);
      int _selectedIndex = 0;
      List<Widget> _widggetOptions = <Widget>[
        ChooseanoptionsScreen(),
        DonationsScreen(),
        FamiliesScreen(),
      ];
      void _onItemTapp(int index){
        setState((){
          _selectedIndex = index;
        });
      }
      Widget build(BuildContext context) {
        
    // TODO: implement build
    return MaterialApp (
          home:Scaffold(
       backgroundColor:Colors.white,
        body: _widggetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.home, color: primary,), label: 'home'),
             BottomNavigationBarItem(icon: Icon(Icons.add_box, color: primary,), label: 'home'),
             BottomNavigationBarItem(icon: Icon(Icons.settings, color: primary,), label: 'home'),
             BottomNavigationBarItem(icon: Icon(Icons.email, color: primary,), label: 'home'),
             BottomNavigationBarItem(icon: Icon(Icons.notifications, color: primary,), label: 'home'),
           ],
           currentIndex: _selectedIndex,
           selectedItemColor: pink,
           onTap: _onItemTapp,
         ),
        

    ));
    
      }}