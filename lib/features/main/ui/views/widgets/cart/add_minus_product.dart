import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruits_hub/features/main/ui/manager/cart_cubit/cart_cubit.dart';

class AddMinusProduct extends StatelessWidget {
  const AddMinusProduct({
    super.key,
    required this.product,
  });
  final CartItemEntity product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            context.read<CartCubit>().addToCart(product);
          },
          radius: 12,
          borderRadius: BorderRadius.circular(12),
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primaryColor,
            child: Icon(Icons.add, size: 18, color: Colors.white),
          ),
        ),
        const SpaceH(16),
        Text(
          product.count.toString(),
          style: TextStyles.bold16,
        ),
        const SpaceH(16),
        InkWell(
          onTap: () {
            context.read<CartCubit>().removeOneFromCart(product);
          },
          radius: 12,
          borderRadius: BorderRadius.circular(12),
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.productColor,
            child: Icon(Icons.remove, size: 18, color: Color(0xff979899)),
          ),
        ),
      ],
    );
  }
}
