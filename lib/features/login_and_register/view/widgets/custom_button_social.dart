import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({
    super.key, this.onPress, required this.title, required this.image,
  });

  final  void Function()? onPress;
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      child: Container(
        width: double.infinity,
        height: 64,
        decoration: ShapeDecoration(
          color: const Color(0xFFF9FFF6),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0.50,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Color(0xFFDFDFDF),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title).tr(),
            const SizedBox(width: 12,),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}