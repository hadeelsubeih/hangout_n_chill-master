import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/create_invite_widget.dart';
import 'package:hangout_n_chill/widgets/input.dart';

import 'package:hangout_n_chill/widgets/text_widget.dart';

import 'package:sizer/sizer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

class MyInvitesPage extends StatefulWidget {
  const MyInvitesPage({Key? key}) : super(key: key);

  @override
  State<MyInvitesPage> createState() => _MyInvitesPageState();
}

class _MyInvitesPageState extends State<MyInvitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 20.h,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  )),
              child: Row(
                children: [
                  TextWidget(
                    'MY INVITES',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 6.h,
                  decoration: const BoxDecoration(
                      color: AppColors.scadryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(27),
                      )),
                  child: InkWell(
                    onTap: () {
                      showFlexibleBottomSheet(
                        minHeight: 0,
                        initHeight: 0.5,
                        maxHeight: 1,
                        context: context,
                        builder: _buildBottomSheet,
                        anchors: [0, 0.5, 1],
                      );
                    },
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
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 70.h,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Container(
                      height: 25.h,
                      width: 75.w,
                      margin: EdgeInsets.only(bottom: 3.w),
                      decoration: const BoxDecoration(
                          color: Color(0xFFF9F9F9),
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
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
                              'title\n ',
                              fontSize: 13.sp,
                              color: AppColors.gray,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBottomSheet(
  BuildContext context,
  ScrollController scrollController,
  double bottomSheetOffset,
) {
  return SafeArea(
    child: Material(
      borderRadius: BorderRadius.all(
        Radius.circular(40),
      ),
      child: Container(
        height: 70.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              'Create invite',
              fontSize: 16.sp,
              color: AppColors.primaryColor,
            ),
            const Divider(
              color: AppColors.gray,
              thickness: 1,
            ),
            TextWidget('Invite title *',
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.primaryColor),
            RoundedInputField(
              hintText: "Your User Name",
              color: AppColors.primaryColor.withOpacity(0.1),
              onChanged: (value) {},
            ),
            TextWidget('Description *',
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.primaryColor),
            RoundedInputField(
              hintText: "Your User Name",
              color: AppColors.primaryColor.withOpacity(0.1),
              onChanged: (value) {},
            ),
            TextWidget('Address *',
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.primaryColor),
            RoundedInputField(
              hintText: "Your User Name",
              color: AppColors.primaryColor.withOpacity(0.1),
              onChanged: (value) {},
            ),
            TextWidget('Date & Time *',
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.primaryColor),
            RoundedInputField(
              hintText: "Your User Name",
              color: AppColors.primaryColor.withOpacity(0.1),
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    ),
  );
}
