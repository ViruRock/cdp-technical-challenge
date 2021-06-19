import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:viraltechnicalchallenge/constants/APIConstants.dart';
import 'package:viraltechnicalchallenge/model/movie_list/MovieListDO.dart';

part 'movie_api_client.g.dart';

@RestApi(baseUrl: APIConstants.BASE_URL)
abstract class MovieApiClient {
  factory MovieApiClient(Dio dio) = _MovieApiClient;

  @GET(APIConstants.MOVIE_LIST)
  Future<MovieListDO> getMovieList(
    @Query("api_key") String api_key,
  );
}
