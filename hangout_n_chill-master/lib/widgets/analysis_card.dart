import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class AnalysisCard extends StatelessWidget {
  final String title;
  final String iconName;
  final String number;
  const AnalysisCard(this.title, this.iconName, this.number, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xfff8f8f8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/${this.iconName}.svg',
                  height: 2.h,
                  width: 2.w,
                ),
              ],
            ),
            SizedBox(
              width: 3.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  title,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.scadryColor,
                ),
                TextWidget(
                  number,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
