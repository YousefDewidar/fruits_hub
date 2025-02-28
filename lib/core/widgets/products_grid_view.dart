import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/in_app_notification.dart';
import 'package:fruits_hub/core/widgets/product_card.dart';
import 'package:fruits_hub/features/home/ui/manager/most_seilling_cubit/most_seilling_cubit.dart';
import 'package:fruits_hub/features/home/ui/manager/most_seilling_cubit/most_seilling_state.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MostSeillingCubit, MostSeillingState>(
      listener: (context, state) {
        if (state is MostSeillingFailure) {
          showNotification(context, state.message, NotiType.error);
        }
      },
      builder: (context, state) {
        if (state is MostSeillingLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is MostSeillingSuccess) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
            sliver: SliverGrid.builder(
              itemCount: state.products.length > 6 ? 6 : state.products.length,
              gridDelegate: customDelegate(),
              itemBuilder: (context, index) {
                return ProductCard(
                  product: state.products[index],
                );
              },
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox(),
          );
        }
      },
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
