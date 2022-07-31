import 'package:flutter/material.dart';

class ApplicationConstants {
  ApplicationConstants._();
  static const String pokeBallImageUrl = "images/pokeball.png";
  static const String appTitleText = "Pokedex";

  static const TextStyle appTitleTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 48,
  );

  static const TextStyle getPokemonNameTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static const TextStyle getPokemonTypeChipTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
  );
}
