import 'package:flutter/material.dart';

Step buildStep({
  required Widget title,
  StepState state = StepState.indexed,
  bool isActive = false,
  required Widget content,
}) {
  return Step(
      title: title, state: state, isActive: isActive, content: content);
}