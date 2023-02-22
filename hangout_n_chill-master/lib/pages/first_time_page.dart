import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';

import 'package:hangout_n_chill/widgets/text_widget.dart';

import 'package:sizer/sizer.dart';
import 'package:dotted_border/dotted_border.dart';

class FirstTimePage extends StatelessWidget {
  const FirstTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 3.w, right: 3.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextWidget(
                  "Welcome",
                  color: AppColors.primaryColor,
                  fontSize: 21.sp,
                ),
                TextWidget(
                  " Ahmed!",
                  color: AppColors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 21.sp,
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 15.h,
              decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(49),
                    topLeft: Radius.circular(19),
                    bottomLeft: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  )),
            ),
            SizedBox(
              height: 3.h,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(27),
              dashPattern: [8, 8],
              color: AppColors.gray,
              strokeWidth: 2,
              child: Container(
                height: 5.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/plus.svg',
                      height: 3.h,
                      width: 3.w,
                    ),
                    TextWidget('CREATE INVITE',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                    SvgPicture.asset(
                      'assets/create_invite.svg',
                      height: 4.h,
                      width: 4.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  'Recent Invites',
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
                InkWell(
                  onTap: () {
                    context.router.push(const AnalysisPageRoute());
                  },
                  child: TextWidget(
                    'SEE MORE',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
            TextWidget(
              'You can accept invite and \nenjoy joining!',
              fontSize: 16.sp,
              color: AppColors.gray,
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 26.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 25.h,
                  width: 75.w,
                  margin: EdgeInsets.only(left: 3.w),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              'Watching movies',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.scadryColor,
                            ),
                            SvgPicture.asset(
                              'assets/receive_invite.svg',
                              height: 4.h,
                              width: 4.w,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/calendar_icon.svg',
                                  height: 2.h,
                                  width: 2.w,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                TextWidget(
                                  '12 JAN 2022',
                                  fontSize: 11.sp,
                                  color: AppColors.lightPrimaryColor,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/time_icon.svg',
                                  height: 2.h,
                                  width: 2.w,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                TextWidget(
                                  '4 pm',
                                  fontSize: 11.sp,
                                  color: AppColors.lightPrimaryColor,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextWidget(
                          'title \n \n',
                          fontSize: 13.sp,
                          color: AppColors.gray,
                          maxLines: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: AppColors.white,
                                  radius: 18,
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundImage:
                                        AssetImage('assets/facebook.png'),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: AppColors.white,
                                  radius: 18,
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundImage:
                                        AssetImage('assets/facebook.png'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/address_icon.svg',
                                  height: 2.h,
                                  width: 2.w,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                TextWidget(
                                  'NY, NY city',
                                  fontSize: 11.sp,
                                  color: AppColors.red,
                                ),
                              ],
                            ),
                            TextWidget(
                              'FREE',
                              fontSize: 10.sp,
                              color: AppColors.lightSkyBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 30.w,
                              height: 3.5.h,
                              child: ButtonWidget(
                                onPressed: () {
                                  //  context.router.push(const VerificationPageRoute());
                                },
                                title: "ACCEPT",
                                textColor: AppColors.white,
                                backgroundColor: AppColors.primaryColor,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                                shapeRadius: 24,
                                verticalTextPadding: 0.5.h,
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                              height: 3.5.h,
                              child: ButtonWidget(
                                onPressed: () {
                                  //  context.router.push(const VerificationPageRoute());
                                },
                                title: "IGNORE",
                                textColor: AppColors.primaryColor,
                                backgroundColor:
                                    AppColors.primaryColor.withOpacity(0.24),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                                shapeRadius: 24,
                                verticalTextPadding: 0.5.h,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
