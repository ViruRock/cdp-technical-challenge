// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MovieListDBData extends DataClass implements Insertable<MovieListDBData> {
  final bool adult;
  final String backdrop_path;
  final int id;
  final String original_language;
  final String original_title;
  final String overview;
  final double popularity;
  final String poster_path;
  final String relase_date;
  final String title;
  final bool video;
  final double vote_average;
  final int vote_count;
  MovieListDBData(
      {required this.adult,
      required this.backdrop_path,
      required this.id,
      required this.original_language,
      required this.original_title,
      required this.overview,
      required this.popularity,
      required this.poster_path,
      required this.relase_date,
      required this.title,
      required this.video,
      required this.vote_average,
      required this.vote_count});
  factory MovieListDBData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MovieListDBData(
      adult: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}adult'])!,
      backdrop_path: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}backdrop_path'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      original_language: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}original_language'])!,
      original_title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_title'])!,
      overview: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overview'])!,
      popularity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}popularity'])!,
      poster_path: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}poster_path'])!,
      relase_date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}relase_date'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      video: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video'])!,
      vote_average: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_average'])!,
      vote_count: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_count'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['adult'] = Variable<bool>(adult);
    map['backdrop_path'] = Variable<String>(backdrop_path);
    map['id'] = Variable<int>(id);
    map['original_language'] = Variable<String>(original_language);
    map['original_title'] = Variable<String>(original_title);
    map['overview'] = Variable<String>(overview);
    map['popularity'] = Variable<double>(popularity);
    map['poster_path'] = Variable<String>(poster_path);
    map['relase_date'] = Variable<String>(relase_date);
    map['title'] = Variable<String>(title);
    map['video'] = Variable<bool>(video);
    map['vote_average'] = Variable<double>(vote_average);
    map['vote_count'] = Variable<int>(vote_count);
    return map;
  }

  MovieListDBCompanion toCompanion(bool nullToAbsent) {
    return MovieListDBCompanion(
      adult: Value(adult),
      backdrop_path: Value(backdrop_path),
      id: Value(id),
      original_language: Value(original_language),
      original_title: Value(original_title),
      overview: Value(overview),
      popularity: Value(popularity),
      poster_path: Value(poster_path),
      relase_date: Value(relase_date),
      title: Value(title),
      video: Value(video),
      vote_average: Value(vote_average),
      vote_count: Value(vote_count),
    );
  }

  factory MovieListDBData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MovieListDBData(
      adult: serializer.fromJson<bool>(json['adult']),
      backdrop_path: serializer.fromJson<String>(json['backdrop_path']),
      id: serializer.fromJson<int>(json['id']),
      original_language: serializer.fromJson<String>(json['original_language']),
      original_title: serializer.fromJson<String>(json['original_title']),
      overview: serializer.fromJson<String>(json['overview']),
      popularity: serializer.fromJson<double>(json['popularity']),
      poster_path: serializer.fromJson<String>(json['poster_path']),
      relase_date: serializer.fromJson<String>(json['relase_date']),
      title: serializer.fromJson<String>(json['title']),
      video: serializer.fromJson<bool>(json['video']),
      vote_average: serializer.fromJson<double>(json['vote_average']),
      vote_count: serializer.fromJson<int>(json['vote_count']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'adult': serializer.toJson<bool>(adult),
      'backdrop_path': serializer.toJson<String>(backdrop_path),
      'id': serializer.toJson<int>(id),
      'original_language': serializer.toJson<String>(original_language),
      'original_title': serializer.toJson<String>(original_title),
      'overview': serializer.toJson<String>(overview),
      'popularity': serializer.toJson<double>(popularity),
      'poster_path': serializer.toJson<String>(poster_path),
      'relase_date': serializer.toJson<String>(relase_date),
      'title': serializer.toJson<String>(title),
      'video': serializer.toJson<bool>(video),
      'vote_average': serializer.toJson<double>(vote_average),
      'vote_count': serializer.toJson<int>(vote_count),
    };
  }

  MovieListDBData copyWith(
          {bool? adult,
          String? backdrop_path,
          int? id,
          String? original_language,
          String? original_title,
          String? overview,
          double? popularity,
          String? poster_path,
          String? relase_date,
          String? title,
          bool? video,
          double? vote_average,
          int? vote_count}) =>
      MovieListDBData(
        adult: adult ?? this.adult,
        backdrop_path: backdrop_path ?? this.backdrop_path,
        id: id ?? this.id,
        original_language: original_language ?? this.original_language,
        original_title: original_title ?? this.original_title,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        poster_path: poster_path ?? this.poster_path,
        relase_date: relase_date ?? this.relase_date,
        title: title ?? this.title,
        video: video ?? this.video,
        vote_average: vote_average ?? this.vote_average,
        vote_count: vote_count ?? this.vote_count,
      );
  @override
  String toString() {
    return (StringBuffer('MovieListDBData(')
          ..write('adult: $adult, ')
          ..write('backdrop_path: $backdrop_path, ')
          ..write('id: $id, ')
          ..write('original_language: $original_language, ')
          ..write('original_title: $original_title, ')
          ..write('overview: $overview, ')
          ..write('popularity: $popularity, ')
          ..write('poster_path: $poster_path, ')
          ..write('relase_date: $relase_date, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('vote_average: $vote_average, ')
          ..write('vote_count: $vote_count')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      adult.hashCode,
      $mrjc(
          backdrop_path.hashCode,
          $mrjc(
              id.hashCode,
              $mrjc(
                  original_language.hashCode,
                  $mrjc(
                      original_title.hashCode,
                      $mrjc(
                          overview.hashCode,
                          $mrjc(
                              popularity.hashCode,
                              $mrjc(
                                  poster_path.hashCode,
                                  $mrjc(
                                      relase_date.hashCode,
                                      $mrjc(
                                          title.hashCode,
                                          $mrjc(
                                              video.hashCode,
                                              $mrjc(
                                                  vote_average.hashCode,
                                                  vote_count
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieListDBData &&
          other.adult == this.adult &&
          other.backdrop_path == this.backdrop_path &&
          other.id == this.id &&
          other.original_language == this.original_language &&
          other.original_title == this.original_title &&
          other.overview == this.overview &&
          other.popularity == this.popularity &&
          other.poster_path == this.poster_path &&
          other.relase_date == this.relase_date &&
          other.title == this.title &&
          other.video == this.video &&
          other.vote_average == this.vote_average &&
          other.vote_count == this.vote_count);
}

class MovieListDBCompanion extends UpdateCompanion<MovieListDBData> {
  final Value<bool> adult;
  final Value<String> backdrop_path;
  final Value<int> id;
  final Value<String> original_language;
  final Value<String> original_title;
  final Value<String> overview;
  final Value<double> popularity;
  final Value<String> poster_path;
  final Value<String> relase_date;
  final Value<String> title;
  final Value<bool> video;
  final Value<double> vote_average;
  final Value<int> vote_count;
  const MovieListDBCompanion({
    this.adult = const Value.absent(),
    this.backdrop_path = const Value.absent(),
    this.id = const Value.absent(),
    this.original_language = const Value.absent(),
    this.original_title = const Value.absent(),
    this.overview = const Value.absent(),
    this.popularity = const Value.absent(),
    this.poster_path = const Value.absent(),
    this.relase_date = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.vote_average = const Value.absent(),
    this.vote_count = const Value.absent(),
  });
  MovieListDBCompanion.insert({
    required bool adult,
    required String backdrop_path,
    required int id,
    required String original_language,
    required String original_title,
    required String overview,
    required double popularity,
    required String poster_path,
    required String relase_date,
    required String title,
    required bool video,
    required double vote_average,
    required int vote_count,
  })  : adult = Value(adult),
        backdrop_path = Value(backdrop_path),
        id = Value(id),
        original_language = Value(original_language),
        original_title = Value(original_title),
        overview = Value(overview),
        popularity = Value(popularity),
        poster_path = Value(poster_path),
        relase_date = Value(relase_date),
        title = Value(title),
        video = Value(video),
        vote_average = Value(vote_average),
        vote_count = Value(vote_count);
  static Insertable<MovieListDBData> custom({
    Expression<bool>? adult,
    Expression<String>? backdrop_path,
    Expression<int>? id,
    Expression<String>? original_language,
    Expression<String>? original_title,
    Expression<String>? overview,
    Expression<double>? popularity,
    Expression<String>? poster_path,
    Expression<String>? relase_date,
    Expression<String>? title,
    Expression<bool>? video,
    Expression<double>? vote_average,
    Expression<int>? vote_count,
  }) {
    return RawValuesInsertable({
      if (adult != null) 'adult': adult,
      if (backdrop_path != null) 'backdrop_path': backdrop_path,
      if (id != null) 'id': id,
      if (original_language != null) 'original_language': original_language,
      if (original_title != null) 'original_title': original_title,
      if (overview != null) 'overview': overview,
      if (popularity != null) 'popularity': popularity,
      if (poster_path != null) 'poster_path': poster_path,
      if (relase_date != null) 'relase_date': relase_date,
      if (title != null) 'title': title,
      if (video != null) 'video': video,
      if (vote_average != null) 'vote_average': vote_average,
      if (vote_count != null) 'vote_count': vote_count,
    });
  }

  MovieListDBCompanion copyWith(
      {Value<bool>? adult,
      Value<String>? backdrop_path,
      Value<int>? id,
      Value<String>? original_language,
      Value<String>? original_title,
      Value<String>? overview,
      Value<double>? popularity,
      Value<String>? poster_path,
      Value<String>? relase_date,
      Value<String>? title,
      Value<bool>? video,
      Value<double>? vote_average,
      Value<int>? vote_count}) {
    return MovieListDBCompanion(
      adult: adult ?? this.adult,
      backdrop_path: backdrop_path ?? this.backdrop_path,
      id: id ?? this.id,
      original_language: original_language ?? this.original_language,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path ?? this.poster_path,
      relase_date: relase_date ?? this.relase_date,
      title: title ?? this.title,
      video: video ?? this.video,
      vote_average: vote_average ?? this.vote_average,
      vote_count: vote_count ?? this.vote_count,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (adult.present) {
      map['adult'] = Variable<bool>(adult.value);
    }
    if (backdrop_path.present) {
      map['backdrop_path'] = Variable<String>(backdrop_path.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (original_language.present) {
      map['original_language'] = Variable<String>(original_language.value);
    }
    if (original_title.present) {
      map['original_title'] = Variable<String>(original_title.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double>(popularity.value);
    }
    if (poster_path.present) {
      map['poster_path'] = Variable<String>(poster_path.value);
    }
    if (relase_date.present) {
      map['relase_date'] = Variable<String>(relase_date.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (video.present) {
      map['video'] = Variable<bool>(video.value);
    }
    if (vote_average.present) {
      map['vote_average'] = Variable<double>(vote_average.value);
    }
    if (vote_count.present) {
      map['vote_count'] = Variable<int>(vote_count.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieListDBCompanion(')
          ..write('adult: $adult, ')
          ..write('backdrop_path: $backdrop_path, ')
          ..write('id: $id, ')
          ..write('original_language: $original_language, ')
          ..write('original_title: $original_title, ')
          ..write('overview: $overview, ')
          ..write('popularity: $popularity, ')
          ..write('poster_path: $poster_path, ')
          ..write('relase_date: $relase_date, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('vote_average: $vote_average, ')
          ..write('vote_count: $vote_count')
          ..write(')'))
        .toString();
  }
}

class $MovieListDBTable extends MovieListDB
    with TableInfo<$MovieListDBTable, MovieListDBData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MovieListDBTable(this._db, [this._alias]);
  final VerificationMeta _adultMeta = const VerificationMeta('adult');
  @override
  late final GeneratedBoolColumn adult = _constructAdult();
  GeneratedBoolColumn _constructAdult() {
    return GeneratedBoolColumn(
      'adult',
      $tableName,
      false,
    );
  }

  final VerificationMeta _backdrop_pathMeta =
      const VerificationMeta('backdrop_path');
  @override
  late final GeneratedTextColumn backdrop_path = _constructBackdropPath();
  GeneratedTextColumn _constructBackdropPath() {
    return GeneratedTextColumn(
      'backdrop_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _original_languageMeta =
      const VerificationMeta('original_language');
  @override
  late final GeneratedTextColumn original_language =
      _constructOriginalLanguage();
  GeneratedTextColumn _constructOriginalLanguage() {
    return GeneratedTextColumn(
      'original_language',
      $tableName,
      false,
    );
  }

  final VerificationMeta _original_titleMeta =
      const VerificationMeta('original_title');
  @override
  late final GeneratedTextColumn original_title = _constructOriginalTitle();
  GeneratedTextColumn _constructOriginalTitle() {
    return GeneratedTextColumn(
      'original_title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _overviewMeta = const VerificationMeta('overview');
  @override
  late final GeneratedTextColumn overview = _constructOverview();
  GeneratedTextColumn _constructOverview() {
    return GeneratedTextColumn(
      'overview',
      $tableName,
      false,
    );
  }

  final VerificationMeta _popularityMeta = const VerificationMeta('popularity');
  @override
  late final GeneratedRealColumn popularity = _constructPopularity();
  GeneratedRealColumn _constructPopularity() {
    return GeneratedRealColumn(
      'popularity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _poster_pathMeta =
      const VerificationMeta('poster_path');
  @override
  late final GeneratedTextColumn poster_path = _constructPosterPath();
  GeneratedTextColumn _constructPosterPath() {
    return GeneratedTextColumn(
      'poster_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _relase_dateMeta =
      const VerificationMeta('relase_date');
  @override
  late final GeneratedTextColumn relase_date = _constructRelaseDate();
  GeneratedTextColumn _constructRelaseDate() {
    return GeneratedTextColumn(
      'relase_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedTextColumn title = _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _videoMeta = const VerificationMeta('video');
  @override
  late final GeneratedBoolColumn video = _constructVideo();
  GeneratedBoolColumn _constructVideo() {
    return GeneratedBoolColumn(
      'video',
      $tableName,
      false,
    );
  }

  final VerificationMeta _vote_averageMeta =
      const VerificationMeta('vote_average');
  @override
  late final GeneratedRealColumn vote_average = _constructVoteAverage();
  GeneratedRealColumn _constructVoteAverage() {
    return GeneratedRealColumn(
      'vote_average',
      $tableName,
      false,
    );
  }

  final VerificationMeta _vote_countMeta = const VerificationMeta('vote_count');
  @override
  late final GeneratedIntColumn vote_count = _constructVoteCount();
  GeneratedIntColumn _constructVoteCount() {
    return GeneratedIntColumn(
      'vote_count',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        adult,
        backdrop_path,
        id,
        original_language,
        original_title,
        overview,
        popularity,
        poster_path,
        relase_date,
        title,
        video,
        vote_average,
        vote_count
      ];
  @override
  $MovieListDBTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'movie_list_d_b';
  @override
  final String actualTableName = 'movie_list_d_b';
  @override
  VerificationContext validateIntegrity(Insertable<MovieListDBData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('adult')) {
      context.handle(
          _adultMeta, adult.isAcceptableOrUnknown(data['adult']!, _adultMeta));
    } else if (isInserting) {
      context.missing(_adultMeta);
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
          _backdrop_pathMeta,
          backdrop_path.isAcceptableOrUnknown(
              data['backdrop_path']!, _backdrop_pathMeta));
    } else if (isInserting) {
      context.missing(_backdrop_pathMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('original_language')) {
      context.handle(
          _original_languageMeta,
          original_language.isAcceptableOrUnknown(
              data['original_language']!, _original_languageMeta));
    } else if (isInserting) {
      context.missing(_original_languageMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _original_titleMeta,
          original_title.isAcceptableOrUnknown(
              data['original_title']!, _original_titleMeta));
    } else if (isInserting) {
      context.missing(_original_titleMeta);
    }
    if (data.containsKey('overview')) {
      context.handle(_overviewMeta,
          overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    } else if (isInserting) {
      context.missing(_overviewMeta);
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    } else if (isInserting) {
      context.missing(_popularityMeta);
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _poster_pathMeta,
          poster_path.isAcceptableOrUnknown(
              data['poster_path']!, _poster_pathMeta));
    } else if (isInserting) {
      context.missing(_poster_pathMeta);
    }
    if (data.containsKey('relase_date')) {
      context.handle(
          _relase_dateMeta,
          relase_date.isAcceptableOrUnknown(
              data['relase_date']!, _relase_dateMeta));
    } else if (isInserting) {
      context.missing(_relase_dateMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('video')) {
      context.handle(
          _videoMeta, video.isAcceptableOrUnknown(data['video']!, _videoMeta));
    } else if (isInserting) {
      context.missing(_videoMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
          _vote_averageMeta,
          vote_average.isAcceptableOrUnknown(
              data['vote_average']!, _vote_averageMeta));
    } else if (isInserting) {
      context.missing(_vote_averageMeta);
    }
    if (data.containsKey('vote_count')) {
      context.handle(
          _vote_countMeta,
          vote_count.isAcceptableOrUnknown(
              data['vote_count']!, _vote_countMeta));
    } else if (isInserting) {
      context.missing(_vote_countMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MovieListDBData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MovieListDBData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MovieListDBTable createAlias(String alias) {
    return $MovieListDBTable(_db, alias);
  }
}

abstract class _$MovieListAppDatabase extends GeneratedDatabase {
  _$MovieListAppDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $MovieListDBTable movieListDB = $MovieListDBTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movieListDB];
}
