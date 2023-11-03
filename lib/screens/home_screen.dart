import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movies_app/shared/network/remote/api_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: ApiManager.getSources(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError || snapshot.data == null) {
                return Center(child: Text("Error: Failed to load sources,${snapshot.error}"));
              } else {
                var sources = snapshot.data?.results ?? [];
                return ListView.builder(
                  itemCount: sources.length,
                  itemBuilder: (context, index) {
                    return Text(sources[index].title ?? "");
                  },
                );
              }
            }));
  }
}
