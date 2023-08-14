import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../resources/app_color.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.clicked, required this.content,required this.onPress,
  });

  final bool clicked;
  final String content;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      decoration: ShapeDecoration(
        color: clicked ? ColorManager.primary : ColorManager.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: MaterialButton(
        onPressed:
          onPress,
        child:  Text(
          content,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
      ),
    );
  }
}