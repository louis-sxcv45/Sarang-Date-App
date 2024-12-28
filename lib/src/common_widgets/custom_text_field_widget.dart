import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/color_manager.dart';
import 'package:sarang_app/src/themes_manager/style_manager.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.labelName,
    required this.hintText,
    required this.controller,
    this.isObsecure = false,
    });

  final String labelName;
  final String hintText;
  final TextEditingController controller;
  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),

        const SizedBox(
          height: AppSize.s8,
        ),

        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextStyle(), ///style dari inputan text
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: getBlack30TextStyle(),
            contentPadding: const EdgeInsets.symmetric( ///memberikan padding pada inputan text
              vertical: AppPadding.p15,
              horizontal: AppPadding.p30,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s50)
            ),
            filled: true,
            fillColor: ColorManager.secondary,
          ),
        ),

        const SizedBox(
          height: AppSize.s14,
        )
      ],
    );
  }
}