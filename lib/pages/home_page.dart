import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pokemonList = [];

  @override
  initState(){
    super.initState();
    getData();
  }

  getData() async {
    // https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    // print(response.statusCode); // statusCode 200 o 404
    // print(response.body); //body es un getter que retorna un String
    Map<String, dynamic> myMap = json.decode(response.body);
    pokemonList = myMap["pokemon"];
    pokemonList.forEach((element) {
      print(element["name"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
    );
  }
}
