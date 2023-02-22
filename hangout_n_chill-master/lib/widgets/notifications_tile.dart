import 'package:flutter/material.dart';
import 'package:hangout_n_chill/utils/theme/app_colors.dart';
import 'package:hangout_n_chill/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class NotificationTiles extends StatelessWidget {
  final String? title, subtitle;
  final VoidCallback? onTap;

  const NotificationTiles(
      {Key? key, required this.title, this.subtitle, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              image: DecorationImage(
                  image: AssetImage('assets/sing_in_background.png'),
                  fit: BoxFit.cover))),
      title: TextWidget(
        title ?? "title",
        color: AppColors.primaryColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
      subtitle: Text(subtitle ?? "10 min",
          style: const TextStyle(color: AppColors.gray)),
      onTap: onTap,
    );
  }
}
