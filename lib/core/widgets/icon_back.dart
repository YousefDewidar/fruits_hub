import 'package:flutter/material.dart';

class IconsBack extends StatelessWidget {
  const IconsBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: const EdgeInsets.only(right: 16, left: 16),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xffF1F1F5))),
        child: const Icon(
          size: 18,
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xff0C0D0D),
        ),
      ),
    );
  }
}
