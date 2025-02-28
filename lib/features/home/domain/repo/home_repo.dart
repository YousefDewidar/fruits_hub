import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/features/home/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<ProductEntity>>> getMostSellingProducts();

  // getUserData();

  // getOfferdProducts();

  // searchProducts();

  // getNotification();
}
