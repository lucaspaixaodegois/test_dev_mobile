import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


abstract class Api extends StatelessWidget{
  String linkVideo = "";
  String linkAudio = "";
  String linkPdf = "";

  Api({super.key,  required this.linkAudio,  required this.linkPdf,  required this.linkVideo});

  Future buscarLinks() async {
    print("apiTeste");
    const url =
        "https://raw.githubusercontent.com/App2Sales/mobile-challenge/master/content.json";

    //criando um requisição http
    http.Response response = await http.get(Uri.parse(url));

    //verificando statusCode
    if (response.statusCode == 200) {
      print("Sucesso");

      //dicionario dos dados
      Map<String, dynamic> res = json.decode(response.body);

      linkVideo = res["video"];
      linkAudio = res["audio"];
      linkPdf = res["pdf"];

      print("${res["video"]["audio"]["pdf"]}");
    }
  }
  
  

 
}
