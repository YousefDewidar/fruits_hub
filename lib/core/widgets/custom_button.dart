import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          AppColors.primaryColor,
        ),
        fixedSize: WidgetStatePropertyAll(Size.fromHeight(55)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.end,
        style: TextStyles.regular16.copyWith(
          color: const Color(0xEEFFFFFF),
        ),
      ),
    );
  }
}
