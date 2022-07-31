// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/app_constants.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  PokemonModel pokemon;
  PokeListItem({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(
        children: [
          Text(
            pokemon.name ?? "N/A",
            style: ApplicationConstants.getPokemonNameTextStyle,
          ),
          Chip(
            label: Text(
              pokemon.type![0],
              style: ApplicationConstants.getPokemonTypeChipTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
