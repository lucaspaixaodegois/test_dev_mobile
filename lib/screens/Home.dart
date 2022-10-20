//inportando libs
import 'package:flutter/material.dart';
import 'package:test_dev_mobile/data/Api.dart';
import 'package:test_dev_mobile/screens/Video.dart';
import 'Audio.dart';
import 'Pdf.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexMenuBar = 0;

  static const List<Widget> _opcMenuBar = <Widget>[
    Video(),
    Audio(),
    Pdf(),
  ];

  void _menuBarTouch(int index) {
    setState(() {
      _indexMenuBar = index;
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
        onTap: _menuBarTouch,
      ),
    );
  }
}
