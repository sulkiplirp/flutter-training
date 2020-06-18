import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
                    height: 18,
                    child: Image.asset('gambar/Home.png'),
                  ),
            title: Text('Home', style: TextStyle(fontSize:9),)
            ),
            BottomNavigationBarItem(
            icon: SizedBox(
                    height: 18,
                    child: Image.asset('gambar/Search.png'),
                  ),
            title: Text('Search', style: TextStyle(fontSize:9),)
            ),
            BottomNavigationBarItem(
            icon: SizedBox(
                    height: 18,
                    child: Image.asset('gambar/Cart.png'),
                  ),
            title: Text('Cart', style: TextStyle(fontSize:9),)
            ),
            BottomNavigationBarItem(
            icon: SizedBox(
                    height: 18,
                    child: Image.asset('gambar/Profile.png'),
                  ),
            title: Text('Profile', style: TextStyle(fontSize:9),)
            ),
            BottomNavigationBarItem(
            icon: SizedBox(
                    height: 18,
                    child: Image.asset('gambar/3line.png'),
                  ),
            title: Text('More', style: TextStyle(fontSize:9),)
            ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        );
  }
}