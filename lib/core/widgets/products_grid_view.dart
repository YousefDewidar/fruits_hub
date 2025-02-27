import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
      sliver: SliverGrid.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          childAspectRatio: 163 / 214,
        ),
        itemBuilder: (context, index) => const ProductCard(),
      ),
    );
  }
}
