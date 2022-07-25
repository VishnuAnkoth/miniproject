import 'package:flutter/material.dart';


import 'package:flutter_auth/Screens/Home/functions/profile_page.dart';
import 'package:flutter_auth/Screens/Home/functions/chat.dart';
import 'package:flutter_auth/Screens/Home/functions/homepage.dart';
import 'package:flutter_auth/Screens/Home/functions/pair.dart';
import 'package:flutter_auth/Screens/Home/functions/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    HomePage(),
    Pair(),
    Chat(),
    ProfilePage(),
    Settings(),
  ];
  final items = [
    const Icon(
      Icons.reviews,
      size: 30,
    ),
    const Icon(
      Icons.chat,

      size: 30,
    ),
    const Icon(
      Icons.person_add,
      size: 30,
    ),
    const Icon(
      Icons.person,
      size: 30,
    ),
    const Icon(
      Icons.settings,
      size: 30,
    ),
  ];

  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00ffffff),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0x00cce1e1),
        height: 60,
        items: items,
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
