import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            ApplicationConstants.appTitleText,
            style: ApplicationConstants.appTitleTextStyle,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            ApplicationConstants.pokeBallImageUrl,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
