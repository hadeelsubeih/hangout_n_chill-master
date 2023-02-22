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

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w, top: 17.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                'Forgot Password',
                fontWeight: FontWeight.bold,
                fontSize: 30.sp,
                color: AppColors.primaryColor,
              ),
              SizedBox(
                height: 9.h,
              ),
              TextWidget(
                'Dont wory! Please Enter the email\n  address associated with your\n account',
                fontWeight: FontWeight.normal,
                fontSize: 17.sp,
                textAlign: TextAlign.center,
                color: AppColors.primaryColor,
              ),
              RoundedInputField(
                hintText: "Enter your email",
                onChanged: (value) {},
                color: AppColors.primaryColor.withOpacity(0.1),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: 80.w,
                child: ButtonWidget(
                  onPressed: () {
                    context.router.push(const CompleteSingUpPageRoute());
                  },
                  title: "SUBMIT",
                  textColor: AppColors.white,
                  backgroundColor: AppColors.primaryColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  shapeRadius: 24,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  TextWidget(
                    "Bake to",
                    color: AppColors.primaryColor,
                  ),
                  TextWidget(
                    " SIGN IN",
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
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
    ));
  }
}
