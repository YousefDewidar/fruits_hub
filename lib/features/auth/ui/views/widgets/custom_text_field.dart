import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Widget? suffIcon;
  final TextEditingController controller;
  final void Function(String?)? onSaved;

  const CustomTextField({
    super.key,
    required this.hint,
    this.suffIcon,
    required this.controller,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      onSaved: onSaved,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        suffixIcon: suffIcon,
        filled: true,
        fillColor: const Color(0x30CFCFCF),
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
          color: Color(0x1FA0A0A0),
        ));
  }
}
