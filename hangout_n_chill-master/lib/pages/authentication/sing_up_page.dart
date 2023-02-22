import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/input.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/sing_up_background.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
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
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  TextWidget(
                    'Create \nAccount',
                    fontWeight: FontWeight.bold,
                    fontSize: 31.sp,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextWidget('Your Legal Name',
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: AppColors.primaryColor),
                  RoundedInputField(
                    hintText: "John Smith",
                    onChanged: (value) {},
                  ),
                  TextWidget('Phone Number',
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: AppColors.primaryColor),
                  RoundedInputField(
                    hintText: "+45 123 123 123",
                    onChanged: (value) {},
                  ),
                  TextWidget('Email Address',
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: AppColors.primaryColor),
                  RoundedInputField(
                    hintText: "example@gmail.com",
                    onChanged: (value) {},
                  ),
                  TextWidget('Password',
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: AppColors.primaryColor),
                  RoundedInputField(
                    hintText: "Enter Password",
                    onChanged: (value) {},
                  ),
                  TextWidget('Confirms Password',
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: AppColors.primaryColor),
                  RoundedInputField(
                    hintText: "Confirm Password",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 80.w,
                    child: ButtonWidget(
                      onPressed: () {
                        context.router.push(const VerificationPageRoute());
                      },
                      title: "SIGN UP",
                      textColor: AppColors.white,
                      backgroundColor: AppColors.primaryColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      shapeRadius: 24,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextWidget(
                        "Already have account?",
                        color: AppColors.primaryColor,
                      ),
                      TextWidget(
                        " SIGN IN",
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
