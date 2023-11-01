import 'package:flutter/material.dart';

import '../shared/styles/colors.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: screen,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(margin: EdgeInsets.only(left: 20),
            width: 150,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Movie Name",style: TextStyle(color: Colors.white,fontSize: 15)),
                Text("2019",style: TextStyle(color: Colors.grey,fontSize: 13)),
                Text("actors names",style: TextStyle(color: Colors.grey,fontSize: 13)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
