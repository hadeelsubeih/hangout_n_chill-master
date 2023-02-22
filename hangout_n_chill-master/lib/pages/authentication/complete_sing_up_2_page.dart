import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

class CompleteSingUp2Page extends StatefulWidget {
  const CompleteSingUp2Page({Key? key}) : super(key: key);

  @override
  _CompleteSingUp2PageState createState() => _CompleteSingUp2PageState();
}

class _CompleteSingUp2PageState extends State<CompleteSingUp2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 270,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/shap_top.png',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            left: 8.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
                color: AppColors.white,
              ),
              TextWidget(
                'Payment methods',
                color: AppColors.white,
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 35.h, right: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/soory.png',
                    height: 97,
                    width: 97,
                  ),
                  SizedBox(height: 2.h),
                  TextWidget(
                    'Sorry !',
                    fontSize: 33.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 2.h),
                  TextWidget(
                    'No Payment method found',
                    fontSize: 17.sp,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: ButtonWidget(
                      onPressed: () {
                        context.router.push(const FirstTimePageRoute());
                      },
                      title: "Add payment method",
                      textColor: AppColors.white,
                      backgroundColor: AppColors.primaryColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      shapeRadius: 24,
                    ),
                  ),
                ],
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
            )
          ],
        ),
      ],
    ));
  }
}
