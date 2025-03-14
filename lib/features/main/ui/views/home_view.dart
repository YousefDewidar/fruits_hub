import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/features/main/domain/repo/home_repo.dart';
import 'package:fruits_hub/features/main/ui/manager/most_seilling_cubit/most_seilling_cubit.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/home_widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MostSeillingCubit(getIt.get<HomeRepo>())..getMostSeillingProducts(),
      child: const HomeViewBody(),
    );
  }
}
