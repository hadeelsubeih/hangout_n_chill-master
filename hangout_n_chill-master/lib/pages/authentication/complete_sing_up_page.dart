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

class CompleteSingUpPage extends StatefulWidget {
  const CompleteSingUpPage({Key? key}) : super(key: key);

  @override
  _CompleteSingUpPageState createState() => _CompleteSingUpPageState();
}

class _CompleteSingUpPageState extends State<CompleteSingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
              'Personal Information',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget('First Name',
                            fontWeight: FontWeight.normal,
                            fontSize: 13.sp,
                            color: AppColors.primaryColor),
                        RoundedInputField(
                          height: 49,
                          width: 152,
                          color: AppColors.primaryColor.withOpacity(0.1),
                          hintText: "John",
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget('Last Name',
                            fontWeight: FontWeight.normal,
                            fontSize: 13.sp,
                            color: AppColors.primaryColor),
                        RoundedInputField(
                          height: 49,
                          width: 152,
                          hintText: "Smith",
                          color: AppColors.primaryColor.withOpacity(0.1),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
                TextWidget('Date of Birth',
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp,
                    color: AppColors.primaryColor),
                RoundedInputField(
                  hintText: "Choose",
                  width: 500,
                  color: AppColors.primaryColor.withOpacity(0.1),
                  onChanged: (value) {},
                ),
                TextWidget('Gender',
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp,
                    color: AppColors.primaryColor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedInputField(
                      height: 49,
                      width: 152,
                      hintText: "Male",
                      color: AppColors.primaryColor.withOpacity(0.1),
                      onChanged: (value) {},
                    ),
                    RoundedInputField(
                      height: 49,
                      width: 152,
                      hintText: "Female",
                      color: AppColors.primaryColor.withOpacity(0.1),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                TextWidget('State',
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp,
                    color: AppColors.primaryColor),
                RoundedInputField(
                  hintText: "New York",
                  width: 500,
                  color: AppColors.primaryColor.withOpacity(0.1),
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonWidget(
                    onPressed: () {
                      context.router.push(const CompleteSingUp2PageRoute());
                    },
                    title: "CONTINUE",
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
    ]));
  }
}
