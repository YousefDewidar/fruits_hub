import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DontHaveAcc extends StatelessWidget {
  const DontHaveAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
              padding:
                  WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 3))),
          child: const Text(
            'قم بإنشاء حساب',
            style: TextStyles.regular22,
          ),
        ),
        Text(
          'لا تمتلك حساب؟',
          style: TextStyles.regular22.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
