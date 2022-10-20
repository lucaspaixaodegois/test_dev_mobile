import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  String linkVideo = "";
  String linkAudio = "";
  String linkPdf = "";

  Future buscarLinks() async {
    print("apiTESte");
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

  getLink() {
    return linkAudio;
  }

  Future<String> get audioTest async => linkAudio;
}
