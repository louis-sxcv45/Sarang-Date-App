import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/asset_image_icon.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.0,
      height: 54.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            '${AssetImageIcon.assetPath}/logo_image.png',
          )
        )
      ),
    );
  }
}