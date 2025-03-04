import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/cart/cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: kHoripadding),
            child: CartItem(),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Color(0xffF1F1F5),
          );
        },
      ),
    );
  }
}
