/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API extends StatefulWidget {
  const API({super.key});

  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {
  String _links = "null";

  void _buscarLinks() async {
    const url =
        "https://raw.githubusercontent.com/App2Sales/mobile-challenge/master/content.json";

    //criando um requisição http
    http.Response response = await http.get(Uri.parse(url));

    //verificando statusCode
    if (response.statusCode == 200) {
      print("Sucesso");

      //dicionario dos dados
      Map<String, dynamic> retorno = json.decode(response.body);
      setState(() {
        _links = retorno["video"]["audio"]["pdf"].toString();
      });

      print("Resultado : " + retorno["video"]["audio"]["pdf"].toString());
    }

    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }
*/