import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/color_manager.dart';
import 'package:sarang_app/src/themes_manager/font_manager.dart';
import 'package:sarang_app/src/themes_manager/style_manager.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, required this.onTap,});

  final String title;
  final VoidCallback onTap; ///untuk menambahkan aksi ketika button di klik
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorManager.pink,
              ColorManager.purple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(AppSize.s50),
        ),
        child: Text(
          title,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
          ),
        ),
      ),
    );
  }
}