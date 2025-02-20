import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isCkecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isCkecked = !isCkecked;
        setState(() {});
      },
      borderRadius: BorderRadius.circular(8),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isCkecked ? AppColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffDDDFDF)),
        ),
        child: const Icon(Icons.check_rounded, color: Colors.white, size: 16),
      ),
    );
  }
}
