import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/home/ui/manager/most_seilling_cubit/most_seilling_cubit.dart';
import 'package:fruits_hub/features/home/ui/manager/most_seilling_cubit/most_seilling_state.dart';
import 'package:fruits_hub/features/home/ui/views/most_selling_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class MostSellingTextRow extends StatelessWidget {
  const MostSellingTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).mostPop,
          style: TextStyles.bold16,
        ),
        BlocBuilder<MostSeillingCubit, MostSeillingState>(
          builder: (context, state) {
            if (state is MostSeillingSuccess) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MostSellingView(products: state.products);
                    },
                  ));
                },
                child: Text(
                  S.of(context).more,
                  style:
                      TextStyles.regular13.copyWith(color: AppColors.greyColor),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
