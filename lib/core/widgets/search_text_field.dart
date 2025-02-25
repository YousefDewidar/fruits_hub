import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(11, 0, 0, 0),
            blurRadius: 9,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: S.of(context).searchHint,
          hintStyle: TextStyles.regular13.copyWith(color: AppColors.greyColor),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide.none,
          ),
          prefixIcon: SvgPicture.asset(
            Assets.imagesSearchIcon,
            color: AppColors.primaryColor,
            fit: BoxFit.scaleDown,
          ),
          suffixIcon: SvgPicture.asset(
            Assets.imagesFilter,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
