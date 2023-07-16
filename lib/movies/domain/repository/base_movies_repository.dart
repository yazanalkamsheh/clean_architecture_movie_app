import 'package:clean_architecture_movie_app/movies/data/models/movie_details_model.dart';
import 'package:clean_architecture_movie_app/movies/domain/entities/movie.dart';
import 'package:clean_architecture_movie_app/movies/domain/entities/movie_detail.dart';
import 'package:clean_architecture_movie_app/movies/domain/entities/recommendation.dart';
import 'package:clean_architecture_movie_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:clean_architecture_movie_app/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure,List<Movie>>> getPopularMovies();

  Future<Either<Failure,List<Movie>>> getTopRatedMovies();

  Future<Either<Failure,MovieDetail>>  getMovieDetails(MovieDetailsParameters parameters);

  Future<Either<Failure,List<Recommendation>>>  getRecommendation(RecommendationParameters parameters);
}