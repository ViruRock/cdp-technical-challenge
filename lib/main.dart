import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viraltechnicalchallenge/CustomProvider.dart';
import 'package:viraltechnicalchallenge/screens/movie_list/movie_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CustomProvider>(
      create: (context) => CustomProvider(),
      child: MaterialApp(
        title: 'Movies List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MovieList(),
      ),
    );
  }
}
