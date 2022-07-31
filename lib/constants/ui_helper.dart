import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  UiHelper._();

  static double getAppTitleWidgetHeight =
      ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;

  static double getPokeballImageWidth =
      ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw;

  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }

  static double calculatePokeImageAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }

  static final Map<String, Color> _typeColorMap = {
    "Grass": Colors.green,
    "Fire": Colors.redAccent,
    "Water": Colors.blue,
    "Electric": Colors.blue.shade300,
    "Rock": Colors.grey,
    "Ground": Colors.brown,
    "Bug": Colors.lightGreenAccent.shade700,
    "Psychic": Colors.indigo,
    "Ghost": Colors.deepPurple,
    "Normal": Colors.black26,
    "Poison": Colors.deepPurpleAccent,
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}
