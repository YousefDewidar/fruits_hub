import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_nav_bar.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavBar(),
      body: SafeArea(
        child: HomeView(),
      ),
    );
  }
}
