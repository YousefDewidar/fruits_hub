import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_cubit.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: kHoripadding, vertical: 16),
        child: SearchTextField(
          onSubmitted: (value) {
            if (value.isEmpty || value.trim().isEmpty) return;
            context.read<SearchCubit>().searchProducts(query: value);
          },
        ),
      ),
    );
  }
}
