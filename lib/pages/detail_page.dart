import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/app_constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/widgets/poke_information.dart';
import 'package:flutter_pokedex/widgets/poke_type_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context)
        : _buildLandscapeBody(context);
  }

  Scaffold _buildPortraitBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UiHelper.getDefaultPadding(),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                iconSize: 20.w,
              ),
            ),
            PokeTypeAndName(pokemon: pokemon),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Image.asset(ApplicationConstants.pokeBallImageUrl,
                        height: 0.15.sh, fit: BoxFit.fitHeight),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 0.12.sh,
                    child: PokeInformation(pokemon: pokemon),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(
                        imageUrl: pokemon.img ?? "",
                        height: 0.25.sh,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildLandscapeBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UiHelper.getDefaultPadding(),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                iconSize: 20.w,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PokeTypeAndName(pokemon: pokemon),
                        Hero(
                          tag: pokemon.id!,
                          child: CachedNetworkImage(
                            imageUrl: pokemon.img ?? "",
                            height: 0.25.sw,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: UiHelper.getDefaultPadding(),
                        child: PokeInformation(pokemon: pokemon),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
