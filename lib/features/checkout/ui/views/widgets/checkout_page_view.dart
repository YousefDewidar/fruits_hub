import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/address_review.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/address_section.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/payment_review.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/payment_section.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/price_review.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/review_card.dart';
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
        PaymentSection(),
        ReviewSection(),
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

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpaceV(10),
        Text("ملخص الطلب :", style: TextStyles.bold13),
        SpaceV(10),
        ReviewCard(body: PriceReview()),
        SpaceV(20),
        Text("يرجي تأكيد  طلبك", style: TextStyles.bold13),
        SpaceV(10),
        ReviewCard(body: PaymentReview()),
        SpaceV(20),
        ReviewCard(body: AddressReview()),
      ],
    );
  }
}


