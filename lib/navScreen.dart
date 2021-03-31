import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget  {
  @override
  _NavState createState() => _NavState();

}

class _NavState extends State<NavScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Home'),
    Text('message'),
    Text('notification'),
    Text('setting'),
];

  void _onItemTap(int index){
    setState(() {
     _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Home'),
      backgroundColor:Colors.pink[200], 
      actions:<Widget>[
        IconButton(icon:Icon(Icons.search),onPressed:(){})
      ],
      elevation: 6 ,
      leading: IconButton(icon: Icon(Icons.home), onPressed: (){}),
      ),
      body : Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(label: "home" ,icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "home" ,icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "home" ,icon: Icon(Icons.message)),
        BottomNavigationBarItem(label: "home" ,icon: Icon(Icons.notifications)),
        BottomNavigationBarItem(label: "home" ,icon: Icon(Icons.settings)),
       
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      ),
    );
  }
}