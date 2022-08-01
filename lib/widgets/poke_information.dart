import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/app_constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: UiHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow("Name", pokemon.name),
            _buildInformationRow("Height", pokemon.height),
            _buildInformationRow("Weight", pokemon.weight),
            _buildInformationRow("Span Time", pokemon.spawnTime),
            _buildInformationRow("Weaknesses", pokemon.weaknesses),
            _buildInformationRow("PrevEvolution", pokemon.prevEvolution),
            _buildInformationRow("NextEvolution", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: ApplicationConstants.getPokeLabelTextStyle),
        if (value is List && value.isNotEmpty)
          Text(value.join(" , "),
              style: ApplicationConstants.getPokeInfoTextStyle)
        else if (value == null)
          Text("Not Avaiable", style: ApplicationConstants.getPokeInfoTextStyle)
        else
          Text(value, style: ApplicationConstants.getPokeInfoTextStyle),
      ],
    );
  }
}
