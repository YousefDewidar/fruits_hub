import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/most_selling/product_card.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/main/domain/entities/product_entity.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/most_selling/app_bar_with_notification.dart';
import 'package:fruits_hub/generated/l10n.dart';

class MostSellingViewBody extends StatelessWidget {
  final List<ProductEntity> products;
  const MostSellingViewBody({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        AppBarWithNotification(
          title: S.of(context).mostPop,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SpaceV(24),
                Text(
                  S.of(context).mostPop,
                  style: TextStyles.bold16,
                ),
                const SpaceV(8),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
          sliver: SliverGrid.builder(
            itemCount: products.length,
            gridDelegate: customDelegate(),
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
              );
            },
          ),
        ),
      ],
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
