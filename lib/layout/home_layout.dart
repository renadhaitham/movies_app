import 'package:flutter/material.dart';
import 'package:movies_app/screens/bowse_screen.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/search_screen.dart';
import 'package:movies_app/screens/watchlist_screen.dart';
import 'package:movies_app/shared/styles/colors.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
  List<Widget> tabs = [HomeScreen(),SearchScreen(), BrowseScreen(), WatchlistScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screen,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bottom,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "BROWSE"),
          BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark), label: "WATCHLIST"),
        ],
        selectedItemColor: selected,
        unselectedItemColor: unselected,
      ),
      body: tabs[index],
    );
  }
}
