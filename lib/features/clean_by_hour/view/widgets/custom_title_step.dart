import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTitleStep extends StatelessWidget {
  const CustomTitleStep({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFFB4B4B4),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ).tr();
  }
}