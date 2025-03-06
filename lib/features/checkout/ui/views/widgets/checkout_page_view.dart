import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/address_section.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/shipping_section.dart';


class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  List<Widget> checkoutSections() => const [
        ShippingSection(),
        AddressSection(),
        ShippingSection(),
        ShippingSection(),
      ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return checkoutSections()[index];
        },
      ),
    );
  }
}
