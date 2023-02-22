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

class SingInPage extends StatefulWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/sing_in_background.png'),
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
                    'Sign In',
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextWidget(
                    'Hello, Welcome Back!',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: AppColors.primaryColor.withOpacity(0.6),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  TextWidget('User Name',
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: AppColors.primaryColor),
                  RoundedInputField(
                    hintText: "Your User Name",
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
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextWidget("Forgot Password?",
                        fontSize: 13.sp,
                        color: AppColors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 80.w,
                    child: ButtonWidget(
                      onPressed: () {
                        context.router.push(const SingUpPageRoute());
                      },
                      title: "SIGN IN",
                      textColor: AppColors.white,
                      backgroundColor: AppColors.primaryColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      shapeRadius: 24,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextWidget(
                        "Don't have an account?",
                        color: AppColors.primaryColor,
                      ),
                      TextWidget(
                        " SIGN UP",
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  buildSocialBtnRow(),
                ],
              ),
            )));
  }
}

Widget buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 44.0,
      width: 44.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}

Widget buildSocialBtnRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildSocialBtn(
          () => print('Login with Facebook'),
          AssetImage(
            'assets/facebook.png',
          ),
        ),
        buildSocialBtn(
          () => print('Login with gmail'),
          AssetImage(
            'assets/gmail.png',
          ),
        ),
      ],
    ),
  );
}
