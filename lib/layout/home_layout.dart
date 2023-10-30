import 'package:flutter/material.dart';
import 'package:movies_app/screens/bowse_screen.dart';
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
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Homeicon.png"),color: unselected,),
                backgroundColor: bottom,label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/search.png"),color: unselected),
                backgroundColor:bottom,label: "Search"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/browse.png"),color: unselected),
                backgroundColor: bottom,label: "Browse"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/bookmark.png"),color: unselected),
                backgroundColor: bottom,label: "Bookmark"),

          ],
        ),

    );
  }
/*  List<Widget> tabs = [
    HomeLayout(),
    BrowseScreen(),
    SearchScreen(),
    WatchlistScreen(),
  ];*/
}
