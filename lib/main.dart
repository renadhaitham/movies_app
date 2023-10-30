import 'package:flutter/material.dart';
import 'package:movies_app/screens/search_screen.dart';
import 'layout/home_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:SearchScreen.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        SearchScreen.routeName:(context)=> SearchScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


