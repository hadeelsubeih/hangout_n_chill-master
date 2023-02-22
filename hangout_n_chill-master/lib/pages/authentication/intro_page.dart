import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hangout_n_chill/models/intro_model.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';
import 'package:hangout_n_chill/utils/constants/constants.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/button_widget.dart';
import 'package:hangout_n_chill/widgets/slider_widget.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          SliderWidget(
            data: introData,
          ),
          SizedBox(
            height: 1.h,
          ),
          Consumer(
            builder: (context, ref, child) {
              final activeIndex = ref.watch(indexProvider);
              return AnimatedSmoothIndicator(
                count: introData.length,
                effect: const WormEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 10.0,
                    dotHeight: 5.0,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1,
                    dotColor: AppColors.white,
                    activeDotColor: AppColors.lightSkyBlue),
                activeIndex: activeIndex,
              );
            },
          ),
          const Spacer(),
          SizedBox(
            width: 80.w,
            child: ButtonWidget(
              title: "SIGN UP",
              onPressed: () {
                context.router.push(const SingInPageRoute());
              },
              backgroundColor: AppColors.scadryColor,
              textColor: AppColors.white,
              shapeRadius: Constants.padding * 2,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextWidget(
                "Already have account?",
                color: AppColors.white,
              ),
              TextWidget(
                " SIGN IN",
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }
}
