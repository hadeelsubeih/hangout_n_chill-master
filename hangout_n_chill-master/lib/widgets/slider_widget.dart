import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hangout_n_chill/models/intro_model.dart';
import 'package:hangout_n_chill/utils/constants/constants.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'network_image_widget.dart';

final indexProvider = StateProvider.autoDispose<int>((ref) => 0);

class SliderWidget extends ConsumerWidget {
  final List<IntroModel> data;
  SliderWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 75.h,
      child: CarouselSlider.builder(
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.w),
                ),
                child: NetworkImageWidget(
                  data[index].photo,
                  height: 55.h,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextWidget(data[index].title,
                  color: AppColors.scadryColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: 75.w,
                child: TextWidget(
                  data[index].description,
                  textAlign: TextAlign.center,
                  color: AppColors.white,
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
            //     autoPlayInterval: const Duration(seconds: 2),
            autoPlay: false,
            enlargeCenterPage: false,
            viewportFraction: 1,
            // aspectRatio: 2.0,
            initialPage: 0,
            onPageChanged: (index, reason) {
              ref.read(indexProvider.state).state = index;
            },
            disableCenter: true),
        itemCount: data.length,
      ),
    );
  }
}
