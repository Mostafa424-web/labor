import 'package:flutter/cupertino.dart';
import 'package:labor_a/core/resources/app_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errorMessage}) : super(key: key);
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage ,
        textAlign: TextAlign.center,
        style: AppStyles.style18,
      ),
    );
  }
}
