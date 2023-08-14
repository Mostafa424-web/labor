import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SettingsModel extends Equatable {
  final String title, subTitle;
  final Icon leading, trailing;
  final void Function()? onPress;

  const SettingsModel( {
    required this.title, required this.subTitle, required this.leading, required this.trailing,this.onPress,
});

  @override
  List<Object?> get props => [
    title,
    subTitle,
    leading,
    trailing,
    onPress
  ];

}