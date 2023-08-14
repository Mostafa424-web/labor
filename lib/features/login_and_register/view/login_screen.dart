import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_a/features/login_and_register/view/register_screen.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_button_social.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_have_account_or_not.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_text_field.dart';
import 'package:labor_a/features/main/view/main_screen.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../generated/assets.dart';
import '../../../core/resources/app_color.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/utils/custom_button.dart';
import '../../on_boarding/view_model/boarding_cubit.dart';
import '../view_model/login_register_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BlocProvider(
        create: (context) => LoginRegisterCubit(),
        child: BlocConsumer<LoginRegisterCubit, LoginRegisterState>(
          listener: (context, state) {},
          builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        AppStrings.signIn,
                        style: TextStyle(
                          color: Color(0xFF1B1D21),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ).tr(),
                      const SizedBox(height: 14,),
                      Text(
                        AppStrings.enterPassConfirm,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorManager.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ).tr(),
                      const SizedBox(height: 18,),
                      CustomTextField(
                        controller: emailController,
                        title: AppStrings.phone,
                        hint: AppStrings.phoneHint,
                        suffix: IconButton(
                          icon: const Icon(Icons.phone),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 18,),
                      CustomTextField(
                        controller: passController,
                        title: AppStrings.passNumber,
                        hint: AppStrings.phoneHint,
                        suffix: LoginRegisterCubit.get(context)
                            .changeVisiblePassword(),
                      ),
                      const SizedBox(height: 55,),
                      LoginRegisterCubit.get(context).isLoading ? Center(
                        child: LoadingAnimationWidget.inkDrop(
                          size: 200, color: Colors.white,
                        ),
                      ) : CustomButton(
                        clicked: true,
                        content: AppStrings.log,
                        onPress: () async {
                          // BlocProvider.of<LoginRegisterCubit>(context)
                          //     .loginUser(
                          //         email: emailController.text,
                          //         password: passController.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Center(child: Text('SuccessFul Login')))
                          );
                          AppCubit.get(context).goNext(const MainScreen(), context);
                        },
                      ),
                      const SizedBox(height: 16,),
                      const Text(
                        AppStrings.or,
                      ),
                      const SizedBox(height: 12,),
                      const CustomButtonSocial(
                          title: AppStrings.facebook,
                          image: Assets.imagesFacebook),
                      const SizedBox(height: 18,),
                      const CustomButtonSocial(
                          title: AppStrings.google, image: Assets.imagesGoogle),
                      const SizedBox(height: 14,),
                      CustomHaveAccountOrNot(
                          text1: AppStrings.haveAccount,
                          text2: AppStrings.signIn,
                          onPress: () {
                            AppCubit.get(context)
                                .goNext(FadeIn(
                                delay: const Duration(milliseconds: 300),
                                child: const RegisterScreen()), context);
                          })
                    ],
                  ),
                ),
              );
          },
        ),
      ),
    );
  }
}
