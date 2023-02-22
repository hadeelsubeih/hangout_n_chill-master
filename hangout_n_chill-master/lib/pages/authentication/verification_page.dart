import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/constants/constants.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  'Verification',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              Image.asset(
                'assets/verification.png',
                height: 156,
                width: 156,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "  We have sent verification Code to \nyour phone number",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 17.sp,
                  ),
                  children: [
                    TextSpan(
                      text: '+45 123 123 123',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textFieldOTP(first: true, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: true),
                ],
              ),
              SizedBox(
                width: 80.w,
                child: ButtonWidget(
                  title: "SEND AGAIN",
                  fontWeight: FontWeight.bold,
                  borderColor: AppColors.lightOrange,
                  onPressed: () {
                    context.router.push(const HomePageRoute());
                  },
                  backgroundColor: AppColors.white,
                  textColor: AppColors.orange,
                  shapeRadius: Constants.padding * 2,
                ),
              ),
              SizedBox(
                width: 80.w,
                child: ButtonWidget(
                  title: "SUBMIT",
                  fontWeight: FontWeight.bold,
                  onPressed: () {
                    context.router.push(const ForgotPasswordPageRoute());
                  },
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.white,
                  shapeRadius: Constants.padding * 2,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/background.png',
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      width: 70,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff233166).withAlpha(5),
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColors.lightSkyBlue),
                borderRadius: BorderRadius.circular(50)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColors.lightSkyBlue),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
