import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:superbootcamp_flutter/models/album_model.dart';
import 'package:http/http.dart' as http;

class FetchApiScreen extends StatefulWidget {
  const FetchApiScreen({super.key});

  @override
  State<FetchApiScreen> createState() => _FetchApiScreenState();
}

class _FetchApiScreenState extends State<FetchApiScreen> {
  late Future<AlbumModel>? futureAlbum;
  @override
  void initState() {
    // print("hello world");
    super.initState();
    futureAlbum = fetchAlbum();
  }

  Future<AlbumModel> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    // print("${response.statusCode}");
    // print("${response.body}");

    if (response.statusCode == 200) {
      return AlbumModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch api"),
      ),
      body: Center(
        child: FutureBuilder<AlbumModel>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title.toString());
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
