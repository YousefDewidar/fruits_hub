
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 214,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffF3F5F7)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        Image.asset(Assets.imagesWatermelonTest)),
                const Spacer(),
                const Text(
                  'بطيخ',
                  style: TextStyles.semiBold13,
                ),
                const SpaceV(4),
                Row(
                  children: [
                    Text(
                      "20${S.of(context).egp} / ",
                      style: TextStyles.bold13.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      S.of(context).kilo,
                      style: TextStyles.semiBold13.copyWith(
                        color: AppColors.lightSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_rounded),
            ),
          ),
          const Positioned(
            bottom: 16,
            left: 10,
            child: CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
