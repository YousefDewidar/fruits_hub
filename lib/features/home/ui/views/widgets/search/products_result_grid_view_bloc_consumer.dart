import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/dummy_fruits.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/in_app_notification.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_cubit.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_state.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/search/products_result_grid_view.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:svg_flutter/svg.dart';

class ProductsResultGridViewBlocConsumer extends StatelessWidget {
  const ProductsResultGridViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is SearchFailure) {
          showNotification(context, state.message, NotiType.error);
        }
      },
      builder: (context, state) {
        if (state is SearchLoading) {
          return Skeletonizer.sliver(
            child: ProductsResultGridView(
              products: DummyFruits.getDummyFruitsList(),
            ),
          );
        } else if (state is SearchSuccess) {
          if (state.products.isEmpty) {
            return const SearchNotFound();
          }
          return ProductsResultGridView(
            products: state.products,
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox(),
          );
        }
      },
    );
  }
}

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SpaceV(110),
          Center(
            child: SvgPicture.asset(
              Assets.imagesSearchNotFound,
              height: 200,
            ),
          ),
          const SpaceV(20),
          Text(
            S.of(context).search,
            style: TextStyles.bold16.copyWith(color: AppColors.greyColor),
          ),
          const SpaceV(6),
          Text(
            S.of(context).searchNotFound,
            style: TextStyles.regular13.copyWith(color: AppColors.greyColor),
          ),
        ],
      ),
    );
  }
}
