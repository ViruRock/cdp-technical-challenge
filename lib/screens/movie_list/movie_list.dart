import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viraltechnicalchallenge/CustomProvider.dart';
import 'package:viraltechnicalchallenge/app_database/movie_list_db.dart';
import 'package:viraltechnicalchallenge/constants/APIConstants.dart';
import 'package:viraltechnicalchallenge/model/movie_list/MovieListDO.dart';
import 'package:viraltechnicalchallenge/network/movie_api_client.dart';
import 'package:viraltechnicalchallenge/screens/movie_details/movie_details.dart';
import 'package:viraltechnicalchallenge/widgets/CustomNetworkImageView.dart';
import 'package:viraltechnicalchallenge/widgets/CustomTextView.dart';

class MovieList extends StatefulWidget {
  MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black12,
          body: _checkMovieAvailableInDB(context)),
    );
  }

  //Check Data Available in Database
  Widget _checkMovieAvailableInDB(BuildContext context) {
    return FutureBuilder<List<MovieListDBData>>(
        future: Provider.of<CustomProvider>(context).getAllMovieListData(),
        builder: (context, AsyncSnapshot<List<MovieListDBData>> movies) {
          if (movies.hasError) {
            return movieListApiCall(context);
          } else {
            if (movies.data == null || movies.data!.isEmpty) {
              return movieListApiCall(context);
            } else {
              return showListView(movies);
            }
          }
        });
  }

  // Movie List Api Call
  FutureBuilder<MovieListDO> movieListApiCall(BuildContext context) {
    final movieList = MovieApiClient(
      Dio(
        BaseOptions(contentType: "application/json"),
      ),
    );
    return FutureBuilder<MovieListDO>(
      future: movieList.getMovieList(APIConstants.API_KEY),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            print(snapshot.error);
            return noDataFound();
          } else if (snapshot.hasData) {
            final MovieListDO? posts = snapshot.data;
            if (posts!.results.isEmpty) {
              return noDataFound();
            } else {
              return insertMovieListInDB(context, posts);
            }
          } else {
            return noDataFound();
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  //Insert data in the Database
  Widget insertMovieListInDB(BuildContext context, MovieListDO posts) {
    for (int i = 0; i < posts.results.length; i++) {
      MovieListDBData movieListDBData = MovieListDBData(
        adult: posts.results.elementAt(i).adult,
        backdrop_path: posts.results.elementAt(i).backdropPath,
        id: posts.results.elementAt(i).id,
        original_language: posts.results.elementAt(i).originalLanguage,
        original_title: posts.results.elementAt(i).originalTitle,
        overview: posts.results.elementAt(i).overview,
        popularity: posts.results.elementAt(i).popularity,
        poster_path: posts.results.elementAt(i).posterPath,
        relase_date: posts.results.elementAt(i).releaseDate,
        title: posts.results.elementAt(i).title,
        video: posts.results.elementAt(i).video,
        vote_average:
            double.parse(posts.results.elementAt(i).voteAverage.toString()),
        vote_count: posts.results.elementAt(i).voteCount,
      );

      Provider.of<CustomProvider>(context).addMovieList(movieListDBData);
    }

    return _checkMovieAvailableInDB(context);
  }

  //Show Movie List
  Widget showListView(AsyncSnapshot<List<MovieListDBData>> movies) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: CustomTextView(
              label: "Popular Movie",
              fontFamily: "OpenSansBold",
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              childAspectRatio: 3 / 4.5,
            ),
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: movies.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MovieDetails(movies.data![index])));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                  shadowColor: Colors.white,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomNetworkImageView(
                        imageurl: APIConstants.IMAGE_BASE_URL +
                            movies.data![index].poster_path,
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        boxFit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: CustomTextView(
                          label: movies.data![index].title,
                          fontSize: 14.0,
                          fontFamily: 'OpenSansSemiBold',
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  //No movie list found
  Widget noDataFound() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 12),
          CustomTextView(
            label: "Popular Movie",
            fontFamily: "OpenSansBold",
            fontSize: 18.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 18,
          ),
          CustomTextView(
            label: 'No popular movie found.',
            fontSize: 14.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
