import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/app_constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiHelper.getAppTitleWidgetHeight,
      child: Stack(
        children: [
          Padding(
            padding: UiHelper.getDefaultPadding(),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ApplicationConstants.appTitleText,
                style: ApplicationConstants.appTitleTextStyle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              ApplicationConstants.pokeBallImageUrl,
              width: UiHelper.getPokeballImageWidth,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
