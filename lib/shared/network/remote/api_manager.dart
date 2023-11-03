import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movies_app/models/SourceResponse.dart';

import '../../components/constants.dart';

/*
class ApiManager {
  static Future<SourceResponse> getSources() async {
    Uri url = Uri.https(BASE, "/3/movie/popular", {"apiKey": APIKEY});
    Response response = await get(url);
    try {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      //var jsonData = jsonDecode(jsonEncode(response.body));
      SourceResponse sourceResponse = SourceResponse.fromJson(jsonData);
      return sourceResponse;
    } catch (e) {
      throw Exception(e);
    }
  }
}
*/
class ApiManager {
  static Future<SourceResponse?> getSources() async {
    Uri url = Uri.https(BASE, "/3/movie/popular", {"apiKey": APIKEY});
    try {
      Response response = await get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        SourceResponse sourceResponse = SourceResponse.fromJson(jsonData);
        return sourceResponse;
      } else {
        // Handle non-200 status code (e.g., by throwing an error or returning null)
        throw Exception('Failed to load sources: ${response.statusCode}');
      }
    } catch (e) {
      // Handle other exceptions and return null to indicate an error
      print('Exception occurred: $e');
      return null;
    }
  }
}

