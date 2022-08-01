import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationConstants {
  ApplicationConstants._();
  static const String pokeBallImageUrl = "images/pokeball.png";
  static const String appTitleText = "Pokedex";

  static TextStyle appTitleTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: _calculateFontSize(48),
  );

  static TextStyle getPokemonNameTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: _calculateFontSize(24),
  );

  static TextStyle getPokemonTypeChipTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _calculateFontSize(20),
  );

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }
}
