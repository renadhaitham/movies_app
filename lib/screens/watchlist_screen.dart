import 'package:flutter/material.dart';
import 'package:movies_app/layout/movie_card.dart';

import '../shared/styles/colors.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Watchlist",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return MovieCard();
            },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 30,
                  );
                }, itemCount: 5),
          )
        ],
      ),
    );
  }
}
