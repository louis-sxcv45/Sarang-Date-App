import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/banner_widget.dart';
import 'package:sarang_app/src/common_widgets/button_widget.dart';
import 'package:sarang_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_upload.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class SignUpAgeScreen extends StatefulWidget {
  static const ageScreenRoute = '/sign_up_age'; 
  const SignUpAgeScreen({super.key});

  @override
  State<SignUpAgeScreen> createState() => _SignUpAgeScreenState();
}

class _SignUpAgeScreenState extends State<SignUpAgeScreen> {

  final occupationController = TextEditingController();
  final ageController = TextEditingController();
  void dispose(){
    super.dispose();
    occupationController.clear();
    ageController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),

              const SizedBox(
                height: AppSize.s30,
              ),

              CustomTextFieldWidget(
                labelName: 'Occupation', 
                hintText: 'Write Your Occupation', 
                controller: occupationController
              ),

              CustomTextFieldWidget(
                labelName: 'Age', 
                hintText: 'Write Your Age', 
                controller: ageController
              ),

              const SizedBox(
                height: 117.0,
              ),

              ButtonWidget(
                title: 'Continue Sign Up', 
                onTap: (){
                  Navigator.pushNamed(context, SignUpUpload.uploadRoute);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}