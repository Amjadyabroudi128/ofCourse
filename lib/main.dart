import 'package:flutter/material.dart';
import 'package:ofcourse/core/appIcons.dart';
import 'package:ofcourse/core/colors.dart';
import 'package:ofcourse/core/textstyles.dart';

import 'ProfilePage/profilepage.dart';
import 'SearchPage/SearchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavbar(),
    );
  }
}

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const SearchPage(),
      const ProfilePage(),
    ];

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
           BottomNavigationBarItem(
            icon: MyIcons.home,
            label: "Home",
          ),

           BottomNavigationBarItem(
            icon: MyIcons.search,
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: MyIcons.profile,
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appBar,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Of Course", style: MyStyles.ofCourse,),
            MyIcons.notis
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

