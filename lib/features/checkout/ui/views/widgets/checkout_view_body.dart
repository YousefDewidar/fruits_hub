import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/checkout_appbar.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/checkout_page_view.dart';
import 'package:fruits_hub/features/checkout/ui/views/widgets/steps_row.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  int curPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(
      () {
        curPage = pageController.page!.toInt();
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  String getTextForButton() {
    if (curPage == 2) {
      return 'تأكيد & استمرار';
    } else if (curPage == 3) {
      return 'تأكيد الطلب';
    } else {
      return S.current.next;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CheckoutAppBar(title: getStepsTitle()[curPage]),
          const SpaceV(16),
          StepsRow(curPage: curPage, pageController: pageController),
          const SpaceV(24),
          CheckoutPageView(pageController: pageController),
          const SpaceV(24),
          CustomButton(
            title: getTextForButton(),
            onPressed: () async {
              await pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              // getCurPage();
            },
          ),
          const SpaceV(50),
        ],
      ),
    );
  }
}
