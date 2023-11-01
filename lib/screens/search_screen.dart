import 'package:flutter/material.dart';
import 'package:movies_app/shared/styles/colors.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = "Search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF514F4F),
                  contentPadding:const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  hintText: "Search",
                  hintStyle: TextStyle(color: grey),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  )
                ),
            ),
            Expanded(
              child: Image.asset("assets/images/moviesSearch.png",alignment: Alignment.topCenter,),
            ),
            Expanded(child: Text("No movies found",style: TextStyle(color: Colors.grey),))
          ],
        ),
      ),
    );
  }
}
