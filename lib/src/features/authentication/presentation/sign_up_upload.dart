import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/button_widget.dart';
import 'package:sarang_app/src/common_widgets/custom_text_widget.dart';
import 'package:sarang_app/src/common_widgets/logo_and_tagline.dart';
import 'package:sarang_app/src/common_widgets/upload_photo.dart';
import 'package:sarang_app/src/themes_manager/font_manager.dart';
import 'package:sarang_app/src/themes_manager/style_manager.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class SignUpUpload extends StatefulWidget {
  static const uploadRoute = '/sign_up_upload';
  const SignUpUpload({super.key});

  @override
  State<SignUpUpload> createState() => _SignUpUploadState();
}

class _SignUpUploadState extends State<SignUpUpload> {
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
              LogoAndTagline(),

              const SizedBox(
                height: AppSize.s50,
              ),

              UploadPhoto(),

              const SizedBox(
                height: 48.0,
              ),

              Text(
                'Andi Mania',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),

              const SizedBox(
                height: AppSize.s4,
              ),

              Text(
                '22, Lawyer',
                style: getBlackTextStyle(),
              ),

              const SizedBox(
                height: 240.0,
              ),

              ButtonWidget(
                title: 'Update My Profile', 
                onTap: (){}
              ),

              const SizedBox(
                height: AppSize.s20,
              ),

              CustomTextWidget(
                title: 'Skip for Now', 
                onPressed: (){}
              ),
            ],
          ),
        ),
        ),
    );
  }
}