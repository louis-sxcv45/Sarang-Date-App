import 'package:flutter/material.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_age_screen.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_upload.dart';
import 'package:sarang_app/src/themes_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: getApplicationThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context)=> SignUpScreen(),
        SignUpAgeScreen.ageScreenRoute: (context)=> SignUpAgeScreen(),
        SignUpUpload.uploadRoute: (context)=> SignUpUpload(),
      },
    );
  }
}