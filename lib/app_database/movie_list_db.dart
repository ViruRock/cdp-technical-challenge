import 'package:moor_flutter/moor_flutter.dart';

part 'movie_list_db.g.dart';

class MovieListDB extends Table {
  BoolColumn get adult => boolean()();
  TextColumn get backdrop_path => text()();
  IntColumn get id => integer()();
  TextColumn get original_language => text()();
  TextColumn get original_title => text()();
  TextColumn get overview => text()();
  RealColumn get popularity => real()();
  TextColumn get poster_path => text()();
  TextColumn get relase_date => text()();
  TextColumn get title => text()();
  BoolColumn get video => boolean()();
  RealColumn get vote_average => real()();
  IntColumn get vote_count => integer()();
}

@UseMoor(tables: [MovieListDB])
class MovieListAppDatabase extends _$MovieListAppDatabase {
  MovieListAppDatabase()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite",
            logStatements: true,
          ),
        );

  int get schemaVersion => 1;

  Future<List<MovieListDBData>> getAllMovieList() => select(movieListDB).get();
  Stream<List<MovieListDBData>> watchAllMovieList() =>
      select(movieListDB).watch();
  Future insertMovieList(MovieListDBData movieListDBData) =>
      into(movieListDB).insert(movieListDBData);
}
