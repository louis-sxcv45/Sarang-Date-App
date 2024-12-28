import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/style_manager.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.title, required this.onPressed,});

  final title;
  final VoidCallback onPressed; ///aksi ketika button di klik
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: getBlack30TextStyle().copyWith( ///copywith agar bisa menambahkan style lain dari paramter style
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}