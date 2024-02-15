import 'package:baby/constants/colors.dart';
import 'package:baby/views/ui/home_page.dart';
import 'package:baby/views/ui/profile_page.dart';
import 'package:baby/views/ui/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int mycurrentIndex = 0;
  int index = 0;
  void myontap(mycurrentIndex) {
    setState(() {
      index = mycurrentIndex;
    });
  }

  List pages = [
    const MyHomePage(),
    const SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mycurrentIndex,
        onTap: myontap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: index == 0 ? AppColors.turquoise : Colors.grey,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: index == 1 ? AppColors.turquoise : Colors.grey),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: index == 2 ? AppColors.turquoise : Colors.grey),
              label: 'person')
        ],
      ),
    );
  }
}
