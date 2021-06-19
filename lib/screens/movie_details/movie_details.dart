import 'package:flutter/material.dart';
import 'package:viraltechnicalchallenge/app_database/movie_list_db.dart';
import 'package:viraltechnicalchallenge/constants/APIConstants.dart';
import 'package:viraltechnicalchallenge/widgets/CustomNetworkImageView.dart';
import 'package:viraltechnicalchallenge/widgets/CustomTextView.dart';

class MovieDetails extends StatelessWidget {
  final MovieListDBData results;

  MovieDetails(this.results);

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomNetworkImageView(
                  imageurl: APIConstants.IMAGE_BASE_URL + results.poster_path,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  boxFit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomTextView(
                        label: results.title,
                        fontSize: 20.0,
                        fontFamily: 'OpenSansBold',
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomTextView(
                        label: "Release on " + results.relase_date,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomTextView(
                        label:
                            "Average vote : " + results.vote_average.toString(),
                        fontFamily: 'OpenSansSemiBold',
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomTextView(
                        label: results.overview,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomTextView(
                        label: "Vote count : " + results.vote_count.toString(),
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomTextView(
                        label: "Popularity : " + results.popularity.toString(),
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
