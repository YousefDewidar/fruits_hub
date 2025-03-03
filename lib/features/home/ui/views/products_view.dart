import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/features/home/domain/repo/home_repo.dart';
import 'package:fruits_hub/features/home/ui/manager/products/products_cubit.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/products/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(getIt.get<HomeRepo>())..getAllProducts(),
      child: const ProductsViewBody(),
    );
  }
}
