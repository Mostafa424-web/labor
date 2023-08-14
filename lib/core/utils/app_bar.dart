import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title:  Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ).tr(),
    leading: const BackButton(
      color: Colors.black,
    ),
  );
}