import 'package:ecommmerce2/screens/home.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _index = 0;
  final screen=[
    Home(),
    Center(child: Text('Search',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
    Center(child: Text('WishList',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
    Center(child: Text('Profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screen[_index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon:  Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon:  Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon:  Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon:  Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
