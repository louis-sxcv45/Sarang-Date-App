import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/asset_image_icon.dart';
import 'package:sarang_app/src/themes_manager/color_manager.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.secondary,
              width: 8.0,
            ),
          ),
          child: ClipRRect(
            child: Image(
              image:AssetImage(
                '${AssetImageIcon.assetPath}/profile.png',
              ),
                width: 180.0,
                height: 180.0,
                fit: BoxFit.cover,
              ),
          ),
        ),

        Positioned(
          bottom: -20.0,
          child: SizedBox(
            width: AppSize.s50,
            height: AppSize.s50,
            child: Image(
              image: AssetImage(
                '${AssetImageIcon.assetPath}/icon_add.png'
              ),),
          ),
        ),
      ],
    );
  }
}