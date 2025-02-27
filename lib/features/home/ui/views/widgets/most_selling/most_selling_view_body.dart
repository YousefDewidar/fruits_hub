import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/products_grid_view.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/most_selling/app_bar_with_notification.dart';
import 'package:fruits_hub/generated/l10n.dart';

class MostSellingViewBody extends StatelessWidget {
  const MostSellingViewBody({super.key});

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
        const ProductsGridView(),
      ],
    );
  }
}
