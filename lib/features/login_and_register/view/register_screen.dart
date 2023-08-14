import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:labor_a/features/main/view/main_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../generated/assets.dart';
import '../../../core/resources/app_color.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/utils/custom_button.dart';
import '../../main/view_model/app_cubit.dart';
import '../view_model/login_register_cubit.dart';
import 'login_screen.dart';
import 'widgets/custom_button_social.dart';
import 'widgets/custom_have_account_or_not.dart';
import 'widgets/custom_text_field.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final emailController = TextEditingController();
final nameController = TextEditingController();
final passController = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();
  String verificationCode = '';

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          AppStrings.enterPhone,
                          style: TextStyle(
                            color: Color(0xFF1B1D21),
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ).tr(),
                        const SizedBox(height: 14,),
                        Text(
                          AppStrings.enterPhoneConfirm,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorManager.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ).tr(),
                        const SizedBox(height: 28,),
                        CustomTextField(
                          controller: nameController,
                          title: AppStrings.fullName,
                          hint: AppStrings.nameHint,
                          suffix: IconButton(
                            icon: const Icon(Icons.person_outline_outlined),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(height: 28,),
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
                          hint: AppStrings.passNumber,
                          suffix: LoginRegisterCubit.get(context).changeVisiblePassword(),
                          obscure: LoginRegisterCubit.get(context).isVisible,
                        ),
                      const SizedBox(height: 55,),
                       LoginRegisterCubit.get(context).isLoading ? Center(
                         child: LoadingAnimationWidget.inkDrop(
                           size: 200, color: Colors.white,
                         ),
                       ) :  CustomButton(
                          clicked: true,
                          content: AppStrings.log,
                          onPress: ()async {
                            if (_formKey.currentState!.validate()) {
                              // Request OTP from Firebase
                            // await  BlocProvider.of<LoginRegisterCubit>(context)
                            //       .registerUser(email: emailController.text,
                            //       password: passController.text);
                              AppCubit.get(context).goNext(const MainScreen(), context);
                            }
                          }
                        ),
                        const SizedBox(height: 16,),
                        const Text(
                          AppStrings.or,
                        ),
                        const SizedBox(height: 12,),
                        const CustomButtonSocial(
                            title: AppStrings.facebook, image: Assets.imagesFacebook),
                        const SizedBox(height: 18,),
                        const CustomButtonSocial(
                            title: AppStrings.google, image: Assets.imagesGoogle),
                        const SizedBox(height: 14,),
                        CustomHaveAccountOrNot(
                            text1: AppStrings.haveAccount,
                            text2: AppStrings.signUp,
                            onPress: () {
                              AppCubit.get(context).goNext(const LoginScreen(), context);
                            })
                      ],
                    ),
                  ),
                ),
              );
          },
        ),
      ),
    );
  }

}
