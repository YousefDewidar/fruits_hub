
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PriceReview extends StatelessWidget {
  const PriceReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "المجموع الفرعي :",
              style: TextStyles.regular13.copyWith(
                color: const Color(0xff4E5556),
              ),
            ),
            Text(
              "150 ${S.current.egp}",
              style: TextStyles.semiBold16,
            ),
          ],
        ),
        const SpaceV(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "التوصيل :",
              style: TextStyles.regular13.copyWith(
                color: const Color(0xff4E5556),
              ),
            ),
            Text(
              "30 ${S.current.egp}",
              style: TextStyles.semiBold16
                  .copyWith(color: const Color(0xff4E5556)),
            ),
          ],
        ),
        const Divider(
          indent: 30,
          endIndent: 30,
          color: Color(0xffCACECE),
        ),
        const SpaceV(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("الكلي", style: TextStyles.bold16),
            Text(
              "180 ${S.current.egp}",
              style: TextStyles.bold16,
            ),
          ],
        ),
        const SpaceV(5),
      ],
    );
  }
}
