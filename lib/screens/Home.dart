//inportando libs
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(16),
                //width: double.infinity,
                /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Olá, sou o Lucas Gois e esté é meu app ''testDevMobile''",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                      // Image.asset("assets/images/play.jpeg"),
                      Text(
                        "\n\n\n\nNavegue pelos icones abaixo.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ]))));
  }
}
