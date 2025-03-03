import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_nav_bar.dart';
import 'package:fruits_hub/features/home/ui/views/home_view.dart';
import 'package:fruits_hub/features/home/ui/views/products_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final List<Widget> _pages = const [
    HomeView(),
    ProductsView(),
    HomeView(),
    HomeView(),
  ];
  int curPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavBar(
        onTap: (value) {
          curPage = value;
          setState(() {});
        },
      ),
      body: SafeArea(
        child: _pages[curPage],
      ),
    );
  }
}
