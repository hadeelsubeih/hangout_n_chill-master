import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/analysis_card.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/charts.dart';
import 'package:hangout_n_chill/widgets/create_invite_widget.dart';
import 'package:hangout_n_chill/widgets/input.dart';
import 'package:hangout_n_chill/widgets/notifications_tile.dart';

import 'package:hangout_n_chill/widgets/text_widget.dart';

import 'package:sizer/sizer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              'Analysis',
              fontSize: 19.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  'Last week stats',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.scadryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AnalysisCard('TOTAL INVITES', 'TOTALINVITES_icon', '40'),
                    AnalysisCard('SENT INVITES', 'SENTINVITES_icon', '30'),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AnalysisCard(
                        'RECEIVED INVITES', 'RECEIVEDINVITES_icon', '10'),
                    AnalysisCard('EARNINGS', 'EARNINGS_icon', '280'),
                  ],
                ),
                TextWidget(
                  'AGE',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.scadryColor,
                ),
                ChartsScreen(),
                TextWidget(
                  'INVITE',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.scadryColor,
                ),
                ChartsScreen(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
