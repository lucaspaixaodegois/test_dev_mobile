import 'package:flutter/material.dart';
import 'package:test_dev_mobile/data/Api.dart';
import 'Home.dart';
import 'Video.dart';
import 'Audio.dart';
import 'Pdf.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _indexMenuBar = 0;

  static const List<Widget> _opcMenuBar = <Widget>[
    Home(),
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
            backgroundColor: Color.fromARGB(255, 235, 134, 2),
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 235, 134, 2),
            icon: Icon(Icons.movie),
            label: 'Vídeo',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 235, 134, 2),
            icon: Icon(Icons.audio_file),
            label: 'Áudio',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 235, 134, 2),
            icon: Icon(Icons.picture_as_pdf),
            label: 'Ebook',
          ),
        ],
        currentIndex: _indexMenuBar,
        selectedItemColor: Colors.black,
        onTap: _menuBarTouch,
      ),
    );
  }
}
