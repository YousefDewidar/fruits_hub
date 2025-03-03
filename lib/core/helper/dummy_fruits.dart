import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/home/domain/entities/product_entity.dart';

class DummyFruits {
  static ProductEntity getDummyFruit() {
    return ProductEntity(
      title: 'Sample Fruit',
      desc: 'A delicious fruit description',
      price: 9.99,
      img: Assets.imagesWatermelonTest,
      additionInfo: AdditionInfoEntity(
        calary: '100 cal',
        dateExpired: '2023-01-01',
      ),
    );
  }

  static List<ProductEntity> getDummyFruitsList() {
    return [
      getDummyFruit(),
      getDummyFruit(),
      getDummyFruit(),
      getDummyFruit(),
      getDummyFruit(),
      getDummyFruit(),
    ];
  }
}
