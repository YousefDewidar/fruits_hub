import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/most_selling_text_row.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/home_app_bar.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/offer_list_view.dart';
import 'package:fruits_hub/core/widgets/products_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
            child: Column(
              children: [
                const HomeAppBar(),
                const SpaceV(16),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Routes.search),
                  child: const SearchTextField(enabled: false),
                ),
                const SpaceV(12),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: OfferListView(),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHoripadding),
            child: Column(
              children: [
                SpaceV(12),
                MostSellingTextRow(),
                SpaceV(8),
              ],
            ),
          ),
        ),
        const ProductsGridView(),
        const SliverToBoxAdapter(
          child: SpaceV(16),
        ),
      ],
    );
  }
}
