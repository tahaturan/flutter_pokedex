import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/app_constants.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
            alignment: Alignment.topLeft,
            child: Text(ApplicationConstants.appTitleText)),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            ApplicationConstants.pokeBallImageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
