import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class CustomHaveAccountOrNot extends StatelessWidget {
  const CustomHaveAccountOrNot({
    super.key, required this.text1, required this.text2, required this.onPress,
  });

  final String text1 , text2;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Colors.black.withOpacity(0.50000000298023224),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        MaterialButton(onPressed:
          onPress, child: Text(text2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        ),
      ],
    );
  }
}