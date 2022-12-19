import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  getData() async {
    // https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    // print(response.statusCode); // statusCode 200 o 404
    // print(response.body); //body es un getter que retorna un String
    // print(json.decode(response.body));
    Map<String, dynamic> myMap = json.decode(response.body);
    // print(myMap["pokemon"]); //imprimiendo Lista "pokemon"
    // print(myMap["pokemon"][0]["name"]); //imprimiendo a "Bulbasaur"
    // print(myMap["pokemon"][0]["next_evolution"][0]["name"]); //imprimiendo a "Ivysaur"

    // myMap["pokemon"].forEach((element){
    //   print(element["name"]);
    // }); //extrayendo los "name" de los 150 pokemon [forma1]
    //
    // for(var item in myMap["pokemon"]){
    //   print(item["name"]); //extrayendo los "name" de los 150 pokemon [forma2]
    // }

    List pokemonList = myMap["pokemon"];
    pokemonList.forEach((element) {
      print(element["name"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
    );
  }
}
