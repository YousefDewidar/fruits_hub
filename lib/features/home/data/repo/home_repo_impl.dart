import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/core/supabase/database_services.dart';
import 'package:fruits_hub/features/home/data/models/product_model.dart';
import 'package:fruits_hub/features/home/domain/entities/product_entity.dart';
import 'package:fruits_hub/features/home/domain/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final DatabaseServices database;

  HomeRepoImpl(this.database);

  @override
  Future<Either<Failuer, List<ProductEntity>>> getMostSellingProducts() async {
    try {
      final dataMap = await database.getAllRecords(tableName: 'products');

      List<ProductEntity> products = dataMap
          .map((item) => ProductModel.fromMap(item))
          .toList();
      return right(products);
    } catch (e) {
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }
}
