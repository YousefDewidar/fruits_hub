import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CheckoutViewBody(),
      ),
    );
  }
}
