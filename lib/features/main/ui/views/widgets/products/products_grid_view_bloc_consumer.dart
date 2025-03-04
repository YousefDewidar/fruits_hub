import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/dummy_fruits.dart';
import 'package:fruits_hub/core/widgets/in_app_notification.dart';
import 'package:fruits_hub/features/main/ui/manager/products/products_cubit.dart';
import 'package:fruits_hub/features/main/ui/manager/products/products_state.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/most_selling/products_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsGridViewBlocConsumer extends StatelessWidget {
  const ProductsGridViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        if (state is ProductsFailure) {
          showNotification(context, state.message, NotiType.error);
        }
      },
      builder: (context, state) {
        if (state is ProductsLoading) {
          return Skeletonizer.sliver(
            child: ProductsGridView(
              products: DummyFruits.getDummyFruitsList(),
            ),
          );
        } else if (state is ProductsSuccess) {
          return ProductsGridView(
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
