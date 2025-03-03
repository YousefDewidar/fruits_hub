import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/main/domain/entities/product_entity.dart';

class OurProductCard extends StatelessWidget {
  const OurProductCard({
    super.key,
    required this.product,
  });
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: const Color(0xffF3F5F7),
            child: Image.asset(
              Assets.imagesWatermelonTest,
              width: 36,
            ),
          ),
          const SizedBox(height: 8),
          Text(product.title)
        ],
      ),
    );
  }
}
