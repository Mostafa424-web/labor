import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_a/features/login_and_register/view_model/login_register_cubit.dart';

import '../../../../core/resources/app_color.dart';
import '../../../on_boarding/view_model/boarding_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller, required this.title, required this.hint, required this.suffix, this.onChange, this.maxLines,
     this.obscure
  });

  final TextEditingController controller;
  final String title, hint;
  final int? maxLines;
  final IconButton suffix;
  final Function(String)? onChange;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginRegisterCubit(),
      child: BlocConsumer<LoginRegisterCubit, LoginRegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                onChanged: onChange,
                maxLines: maxLines ?? 1,
                decoration: InputDecoration(
                    hintText: hint.tr(),
                    suffixIcon: suffix,
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.2),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    focusColor: ColorManager.primary,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorManager.primary, width: 0.5),
                    ),
                    fillColor: const Color(0xFFF9FFF6),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFFF9FFF6), width: 0.5),
                    )
                ),
                obscureText: obscure ?? false,
              ),
            ],
          );
        },
      ),
    );
  }
}