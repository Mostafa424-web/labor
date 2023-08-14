import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_color.dart';

class CustomTextFieldPassword extends StatelessWidget {
  const CustomTextFieldPassword({
    super.key,
    required this.controller, required this.title, required this.hint, required this.suffix, required this.isVisible,
  });

  final TextEditingController controller;
  final String title, hint;
  final IconButton suffix;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        const SizedBox(height: 8,),
        TextFormField(
          controller: controller,
          obscureText: isVisible,
          decoration: InputDecoration(
              hintText:hint.tr(),
              suffixIcon: suffix,
              focusColor: ColorManager.primary,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.primary,width: 0.5),
              ),
              fillColor: const Color(0xFFF9FFF6),
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF9FFF6),width: 0.5),
              )
          ),
        ),
      ],
    );
  }
}