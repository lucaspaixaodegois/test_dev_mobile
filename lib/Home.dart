//inportando libs
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Audio.dart';

//criando stf home
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//class homeState herda da classe stat
class _HomeState extends State<Home> {
  //iniciando index da barraMenu
  int _indexMenuBar = 0;

  //links de retorno
  String _links = "";

  //função Assíncrona  que faz  request via http tenho url de parâmetro
  void _buscarLinks() async {
    //configurando url
    const url =
        "https://raw.githubusercontent.com/App2Sales/mobile-challenge/master/content.json";

    //criando um requisição http
    http.Response response = await http.get(Uri.parse(url));

    //verificando statusCode
    if (response.statusCode == 200) {
      print("Sucesso");

      //dicionario dos dados
      Map<String, dynamic> retorno = json.decode(response.body);

      String video = retorno["video"];
      String audio = retorno["audio"];
      String pdf = retorno["pdf"];

      setState(() {
        _links = "\nVídeo: $video\nÁudio: $audio\nPDF: $pdf ";
      });

      print(_links); //mostrar no console links
    } else {
      print("Falha ao carregar!"); //caso de erro na request
    }
  }

  //configurando StyleTemp
  static const TextStyle opcStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //lista de itens menu
  static const List<Widget> _opcMenuBar = <Widget>[
    Text(
      'Assistindo Vídeo',
      style: opcStyle,
    ),
    Audio(),
    Text(
      ' Lendo PDF',
      style: opcStyle,
    ),
  ];

//função que seta o index do menuBar
  void _opcMenuBarTocado(int index) {
    setState(() {
      _indexMenuBar = index; // atualiza valor do indexAtual
      _buscarLinks(); //chama a função buscarLinks
      
      //Api();
    });
  }

  @override
  Widget build(BuildContext context) {
    //desenhado tela com scaffold
    return Scaffold(
      //desenhado Barra superior, AppBar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 235, 134, 2),
        title: const Text("Teste dev Mobile"),
      ),
      //centralizando conteúdo do body
      body: Center(
        child: _opcMenuBar.elementAt(_indexMenuBar),
      ),
      //desenhando barra de munu inferior, bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        //lista de itens do menu, com icone e nome
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
        currentIndex: _indexMenuBar, //pegando id, index atual
        selectedItemColor: Colors.amber[800],

        ///setando cor para opc Clicada
        onTap: _opcMenuBarTocado, //passando valor index da opc clicada
      ),
    );
  }
}
