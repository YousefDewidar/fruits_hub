import 'package:flutter/material.dart';
import 'package:fruits_hub/features/main/domain/entities/product_entity.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/most_selling/most_selling_view_body.dart';

class MostSellingView extends StatelessWidget {
  const MostSellingView({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MostSellingViewBody(
          products: products,
        ),
      ),
    );
  }
}
