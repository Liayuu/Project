import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/historypage.dart';
import 'package:project_1/pageone.dart';
import 'package:project_1/pagethree.dart';
import 'package:project_1/pagetwo.dart';
import 'package:project_1/view/favoritepage.dart';
import 'package:project_1/view/myprofilepage.dart';
import 'package:project_1/view/profilepage.dart';

class Bottommenu extends StatefulWidget {
  const Bottommenu({Key? key}) : super(key: key);

  @override
  _BottommenuState createState() => _BottommenuState();
}

class _BottommenuState extends State<Bottommenu> {
  int currenIndex = 0;
  final List<Widget> body = [
    Pagethree(),
    Favoritepage(),
    Myprofilepage(),
    Historypage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currenIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
              activeIcon: Icon(
                Icons.favorite_border,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
              activeIcon: Icon(
                Icons.history,
                color: Colors.orange,
              )),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currenIndex = index;
    });
  }
}
