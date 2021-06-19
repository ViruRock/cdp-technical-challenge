import 'package:flutter/cupertino.dart';
import 'package:viraltechnicalchallenge/app_database/movie_list_db.dart';

class CustomProvider extends ChangeNotifier {
  MovieListAppDatabase _movieListAppDatabase = MovieListAppDatabase();

  void addMovieList(MovieListDBData movieListDBData) async {
    await _movieListAppDatabase.insertMovieList(movieListDBData);
    notifyListeners();
  }

  Future<List<MovieListDBData>> getAllMovieListData() async {
    return await _movieListAppDatabase.getAllMovieList();
  }
}
