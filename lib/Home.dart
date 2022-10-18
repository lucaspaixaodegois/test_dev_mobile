import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexMenuBar = 0;

  String _links = "";

  void _buscarLinks() async {
    //configurando url
    const url =
        "https://raw.githubusercontent.com/App2Sales/mobile-challenge/master/content.json";

//criando um requisição
    http.Response response = await http.get(Uri.parse(url));

    //dicionario dos dados
    Map<String, dynamic> retorno = json.decode(response.body);

    String video = retorno["video"];
    String audio = retorno["audio"];
    String pdf = retorno["pdf"];

    setState(() {
      _links = "\nVídeo: $video \nÁudio: $audio \nPDF: $pdf";
    });

    print(_links);
  }

  static const TextStyle opcStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _opcMenuBar = <Widget>[
    Text(
      'Assistindo Vídeo',
      style: opcStyle,
    ),
    Text(
      ' Ouvindo Áudio',
      style: opcStyle,
    ),
    Text(
      ' Lendo PDF',
      style: opcStyle,
    ),
  ];

  void _opcMenuBarTocado(int index) {
    setState(() {
      _indexMenuBar = index;
      _buscarLinks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 235, 134, 2),
        title: const Text("Teste dev Mobile"),
      ),
      body: Center(
        child: _opcMenuBar.elementAt(_indexMenuBar),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Vídeo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audio_file),
            label: 'Áudio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.picture_as_pdf),
            label: 'Ebook',
          ),
        ],
        currentIndex: _indexMenuBar,
        selectedItemColor: Colors.amber[800],
        onTap: _opcMenuBarTocado,
      ),
    );
  }
}
