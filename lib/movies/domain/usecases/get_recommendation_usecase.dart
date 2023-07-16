import 'package:clean_architecture_movie_app/core/error/failure.dart';
import 'package:clean_architecture_movie_app/movies/domain/repository/base_movies_repository.dart';
import 'package:clean_architecture_movie_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/usecase/base_usecase.dart';
import '../entities/recommendation.dart';

class GetRecommendationUseCase extends BaseUseCase<List<Recommendation>,RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object?> get props => [id];
}