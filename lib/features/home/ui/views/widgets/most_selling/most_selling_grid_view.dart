
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/most_selling/product_card.dart';
import 'package:fruits_hub/features/home/domain/entities/product_entity.dart';

class MostSellingGridView extends StatelessWidget {
  const MostSellingGridView({
    super.key,
    required this.products,
  });
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
      sliver: SliverGrid.builder(
        itemCount: products.length > 6 ? 6 : products.length,
        gridDelegate: customDelegate(),
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
          );
        },
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount customDelegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 8,
      childAspectRatio: 163 / 214,
    );
  }
}
