import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/best_seller_text_row.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/home_app_bar.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/offer_list_view.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/products_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHoripadding),
            child: Column(
              children: [
                HomeAppBar(),
                SpaceV(16),
                SearchTextField(),
                SpaceV(12),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: OfferListView(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHoripadding),
            child: Column(
              children: [
                SpaceV(12),
                BestSellerTextRow(),
                SpaceV(8),
              ],
            ),
          ),
        ),
        ProductsGridView()
      ],
    );
  }
}
