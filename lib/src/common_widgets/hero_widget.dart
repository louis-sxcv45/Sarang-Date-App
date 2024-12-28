import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/asset_image_icon.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 215,
      margin: const EdgeInsets.symmetric(
        vertical: AppMargin.m30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s18),
        image: DecorationImage(
          image: AssetImage(
            '${AssetImageIcon.assetPath}/hero_image.png',
          ),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}