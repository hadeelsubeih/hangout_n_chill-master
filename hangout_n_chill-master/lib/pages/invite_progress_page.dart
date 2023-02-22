import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangout_n_chill/models/intro_model.dart';
import 'package:hangout_n_chill/pages/authentication/sing_up_page.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/constants/constants.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/input.dart';
import 'package:hangout_n_chill/widgets/slider_widget.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InviteProgressPage extends StatefulWidget {
  const InviteProgressPage({Key? key}) : super(key: key);

  @override
  _InviteProgressPageState createState() => _InviteProgressPageState();
}

class _InviteProgressPageState extends State<InviteProgressPage> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: TextWidget(
                'Invites progress',
                color: AppColors.primaryColor,
                fontSize: 19.sp,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                child: Theme(
                  data: ThemeData(
                      colorScheme:
                          ColorScheme.light(primary: AppColors.scadryColor)),
                  child: Stepper(
                    steps: getSteps(),
                    currentStep: currentStep,
                    onStepTapped: (int step) {
                      setState(() {
                        currentStep = step;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/background.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ));
  }

  List<Step> getSteps() {
    return [
      step(),
      step(),
      step(),
      step(),
      step(),
    ];
  }

  Step step() {
    return Step(
      title: Text('Personal Info'),
      content: NewWidget(),
      isActive: currentStep >= 0,
      state: currentStep == 0 ? StepState.editing : StepState.complete,
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
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
                SvgPicture.asset(
                  'assets/receive_invite.svg',
                  height: 4.h,
                  width: 4.w,
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
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
                        backgroundImage: AssetImage('assets/facebook.png'),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 18,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage('assets/facebook.png'),
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
                  '\$5',
                  fontSize: 10.sp,
                  color: AppColors.lightSkyBlue,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
