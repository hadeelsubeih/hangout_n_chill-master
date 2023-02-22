import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/create_invite_widget.dart';
import 'package:hangout_n_chill/widgets/input.dart';
import 'package:hangout_n_chill/widgets/notifications_tile.dart';

import 'package:hangout_n_chill/widgets/text_widget.dart';

import 'package:sizer/sizer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 20.h,
              decoration: const BoxDecoration(
                  color: AppColors.scadryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColors.primaryColor.withOpacity(0.1)),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  TextWidget(
                    'Notifications',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox()
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80.h,
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 2.w, bottom: 3.h),
                          child: NotificationTiles(
                            title: "Your Watching Movie invite finished",
                            onTap: () {},
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
