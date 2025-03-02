import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/in_app_notification.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_cubit.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_state.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/search/products_result_grid_view.dart';

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
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is SearchSuccess) {
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
