import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/custom_nav_bar.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/most_selling_view_body.dart';

class MostSellingView extends StatelessWidget {
  const MostSellingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavBar(),
      body: SafeArea(
        child: MostSellingViewBody(),
      ),
    );
  }
}
