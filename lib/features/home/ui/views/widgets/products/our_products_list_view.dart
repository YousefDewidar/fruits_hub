import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/features/home/domain/entities/product_entity.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/products/our_products_card.dart';

class OurProductsListView extends StatelessWidget {
  const OurProductsListView({
    super.key,
    required this.products,
  });
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
          itemBuilder: (context, index) {
            return OurProductCard(
              product: products[index],
            );
          },
        ),
      ),
    );
  }
}
