import 'package:flutter/material.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/text_field_container.dart';
import 'package:sizer/sizer.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  double? height;
  double? width;
  Color? color;

  final ValueChanged<String> onChanged;

  RoundedInputField({
    required this.hintText,
    required this.onChanged,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      height: height,
      width: width,
      color: color,
      child: TextField(
        onChanged: onChanged,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: AppColors.primaryColor.withOpacity(0.6), fontSize: 13.sp),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
