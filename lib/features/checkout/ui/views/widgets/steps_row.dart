import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class StepsRow extends StatelessWidget {
  const StepsRow({
    super.key,
    required this.curPage,
    required this.pageController,
  });
  final int curPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) {
          return Expanded(
            child: curPage >= index
                ? InkWell(
                    onTap: () => pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        ),
                    child: ActiveStep(title: getStepsTitle()[index]))
                : InActiveStep(title: getStepsTitle()[index], index: index),
          );
        },
      ),
    );
  }
}

List<String> getStepsTitle() {
  return [
    S.current.shipping,
    S.current.address,
    S.current.payment,
    S.current.review,
  ];
}

class ActiveStep extends StatelessWidget {
  const ActiveStep({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: AppColors.primaryColor,
          child: SvgPicture.asset(Assets.imagesCheck),
        ),
        const SpaceH(4),
        Text(
          title,
          style: TextStyles.bold13.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}

class InActiveStep extends StatelessWidget {
  final String title;
  final int index;
  const InActiveStep({super.key, required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: const Color(0xffF2F3F3),
          child: Text(
            (index + 1).toString(),
            style: TextStyles.semiBold13,
          ),
        ),
        const SpaceH(4),
        Text(
          title,
          style: TextStyles.bold13.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
