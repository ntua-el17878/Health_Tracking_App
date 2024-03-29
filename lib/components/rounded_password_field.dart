import 'package:flutter/material.dart';
import 'package:health_tracking_app/components/text_field_container.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: AppColors.MAIN_COLOR,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: AppColors.MAIN_COLOR,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: AppColors.MAIN_COLOR,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
