import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String?)? onSaved;

  const PasswordField({
    super.key,
    required this.controller,
    this.onSaved,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).required;
        }
        return null;
      },
      onSaved: widget.onSaved,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: S.of(context).password,
        hintStyle: TextStyles.bold13.copyWith(color: AppColors.greyColor),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: IconButton(
            onPressed: () {
              _obscureText = !_obscureText;
              setState(() {});
            },
            icon: Icon(
              _obscureText ? Icons.remove_red_eye : Icons.visibility_off,
            ),
            color: AppColors.greyColor,
          ),
        ),
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(
          width: 1.3,
          color: Color(0xffE6E9EA),
        ));
  }
}
