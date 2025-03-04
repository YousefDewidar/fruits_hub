import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/cart/cart_list_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          S.of(context).cart,
          textAlign: TextAlign.center,
          style: TextStyles.bold19,
        ),
        const SpaceV(26),
        Container(
          color: const Color(0xFFEBF9F1),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              S.current.haveProductsInCart,
              textAlign: TextAlign.center,
              style: TextStyles.regular13.copyWith(
                color: const Color(0xFF1B5E37),
              ),
            ),
          ),
        ),
        const SpaceV(15),
        const CartListView(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
          child: CustomButton(
            title: "${S.of(context).checkout} 120 ${S.of(context).egp}",
            onPressed: () {},
          ),
        ),
        const SpaceV(16),
      ],
    );
  }
}
