import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/services/pokedex_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeDex'),
      ),
      body: FutureBuilder<List<PokemonModel>>(
        future: _pokemonListFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> listem = snapshot.data;

            return ListView.builder(
              itemCount: listem.length,
              itemBuilder: (BuildContext context, int index) {
                var oankiPokemon = listem[index];
                return ListTile(
                  title: Text(oankiPokemon.name.toString()),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Hata"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
