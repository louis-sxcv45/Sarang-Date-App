import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/banner_widget.dart';
import 'package:sarang_app/src/common_widgets/button_widget.dart';
import 'package:sarang_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:sarang_app/src/common_widgets/custom_text_widget.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_age_screen.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';
class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign_up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  

  @override
  void dispose(){
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),
              CustomTextFieldWidget(
                labelName: 'Complete Name', 
                hintText: 'Write Your Name', 
                controller: nameController),
              CustomTextFieldWidget(
                labelName: 'Email Address', 
                hintText: 'Write your mail address', 
                controller: emailController),
              CustomTextFieldWidget(
                labelName: 'Password', 
                hintText: 'Write your security',
                isObsecure: true, ///untuk mengubah inputan text menjadi password jika true
                controller: passwordController),

              const SizedBox(
                height: AppSize.s16,
              ),

              ButtonWidget(
                title: 'Get Started',
                onTap: (){
                  Navigator.pushNamed(context, SignUpAgeScreen.ageScreenRoute); ///untuk berpindah ke halaman lain menggunakan route
                },
              ),

              const SizedBox(
                height: AppSize.s20,
              ),

              CustomTextWidget(
                title: 'Sign In to My Account', 
                onPressed: (){}
              )
            ],
          ),
        ),
      ),
    );
  }
}