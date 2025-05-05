import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/home/domain/repositories/home_repo.dart';

class FetchCategoriesUsecase {
  final HomeRepo homeRepo;

  FetchCategoriesUsecase({required this.homeRepo});

  Future<Either<Failure, List<String>>> call({required int limit, int skip = 0}) {
    return homeRepo.fetchCategories(limit: limit, skip: skip);
  }
}