import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/input.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class CreateInviteWidget extends StatefulWidget {
  const CreateInviteWidget({Key? key}) : super(key: key);

  @override
  State<CreateInviteWidget> createState() => _CreateInviteWidgetState();
}

class _CreateInviteWidgetState extends State<CreateInviteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: const BoxDecoration(
          color: AppColors.scadryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(27),
          )),
      child: Column(
        children: [
          TextWidget(
            'Create invite',
            fontSize: 16.sp,
            color: AppColors.primaryColor,
          ),
          const Divider(
            color: AppColors.gray,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
