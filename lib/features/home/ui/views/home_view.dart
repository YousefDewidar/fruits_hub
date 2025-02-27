import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_nav_bar.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/home_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavBar(),
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}

