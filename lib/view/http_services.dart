import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vintage_games_level3/model/model.dart';
import 'package:http/http.dart' as http;

// ------------------------http section----------------

// -------------fetch api data section------------------
Future<Album> createAlbum(String title) async {
  final response = await http.post(
    Uri.https('jsonplaceholder.typicode.com', 'albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 201) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}
