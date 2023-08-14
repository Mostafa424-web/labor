import 'package:flutter/material.dart';
import 'package:labor_a/features/home/view/widgets/grid_categries.dart';
import 'package:labor_a/core/resources/app_strings.dart';

import '../../../core/utils/app_bar.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(AppStrings.categories),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: SizedBox(
          child: GridCategories(),
        ),
      ),
    );
  }
}
