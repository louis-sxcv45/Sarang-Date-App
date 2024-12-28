import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/logo_widget.dart';
import 'package:sarang_app/src/themes_manager/style_manager.dart';
import 'package:sarang_app/src/themes_manager/values_manager.dart';

class LogoAndTagline extends StatelessWidget {
  const LogoAndTagline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          LogoWidget(),
      
          const SizedBox(
            height: AppSize.s6,
          ),
          
          Text(
            'Find your perfect love',
            style: getWhiteTextStyle(),
          )
        ],
      ),
    );
  }
}