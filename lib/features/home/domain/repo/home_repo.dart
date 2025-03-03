import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/features/home/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<ProductEntity>>> getMostSellingProducts();
  Future<Either<Failuer, List<ProductEntity>>> getAllProducts();

  Future<Either<Failuer, List<ProductEntity>>> searchProducts({
    required String query,
  });
}
