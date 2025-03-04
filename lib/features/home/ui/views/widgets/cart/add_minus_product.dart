
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';

class AddMinusProduct extends StatelessWidget {
  const AddMinusProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          radius: 12,
          borderRadius: BorderRadius.circular(12),
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primaryColor,
            child:
                Icon(Icons.add, size: 18, color: Colors.white),
          ),
        ),
        const SpaceH(16),
        const Text(
          "2",
          style: TextStyles.bold16,
        ),
        const SpaceH(16),
        InkWell(
          onTap: () {},
          radius: 12,
          borderRadius: BorderRadius.circular(12),
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.productColor,
            child: Icon(Icons.remove,
                size: 18, color: Color(0xff979899)),
          ),
        ),
      ],
    );
  }
}
