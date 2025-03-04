
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/cart/add_minus_product.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      child: Row(
        children: [
          // product Image
          Container(
            width: 73,
            height: 92,
            color: AppColors.productColor,
            child:
                Center(child: Image.asset(Assets.imagesWatermelonTest)),
          ),
          const SpaceH(17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "بطيخ",
                style: TextStyles.bold13,
              ),
              const SpaceV(6),
              Text(
                '3 ${S.of(context).kilogram}',
                style: TextStyles.regular13
                    .copyWith(color: AppColors.secondaryColor),
              ),
              const SpaceV(16),
              const AddMinusProduct(),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(Assets.imagesTrash),
              ),
              Text(
                '60 ${S.of(context).egp}',
                style: TextStyles.bold16
                    .copyWith(color: AppColors.secondaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
