import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_cubit.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/most_selling/app_bar_with_notification.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/search/products_result_grid_view_bloc_consumer.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/search/search_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        AppBarWithNotification(
          title: S.of(context).search,
        ),
        const SearchField(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).lastSearch,
                  style: TextStyles.semiBold13,
                ),
                Text(
                  S.of(context).clearAll,
                  style:
                      TextStyles.regular13.copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
          ),
        ),
        SliverVisibility(
          visible: true,
          sliver: SliverList.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: kHoripadding),
                minTileHeight: 0,
                title: Text(
                  'تفاح',
                  style: TextStyles.regular16,
                ),
                trailing: Icon(
                  Icons.close_rounded,
                ),
                leading: Icon(
                  Icons.access_time_rounded,
                  // size: 16,
                  color: AppColors.greyColor,
                ),
              );
            },
          ),
        ),
        SliverVisibility(
          visible: true,
          sliver: SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).searchRes,
                    style: TextStyles.regular13
                        .copyWith(color: AppColors.greyColor),
                  ),
                  const SpaceV(16),
                ],
              ),
            ),
          ),
        ),
        const SliverVisibility(
          visible: true,
          sliver: ProductsResultGridViewBlocConsumer(),
        ),
      ],
    );
  }
}
