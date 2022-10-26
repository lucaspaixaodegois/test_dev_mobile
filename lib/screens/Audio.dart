import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  //instanciando player
  final player = AudioPlayer();

  //iniciando volume em  0.5
  double volume = 0.5;

  _executar() async {
    //volume inicial
    var volume = await player.setVolume(0.5);

    //configurando url do arquivo
    String url =
        "https://github.com/App2Sales/mobile-challenge/raw/master/a-arte-da-guerra.mp3";

    await player.play(DeviceFileSource(url));
  }

  _volume(double volume) async {
    await player.setVolume(volume);
  }

  @override
  Widget build(BuildContext context) {
    _parar() async {
      print("função Parar");
      await player.stop();
    }

    _pausar() async {
      await player.pause();
      print("função Pausar");
    }

    _volume(volume);

    return Scaffold(
        body: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),

                //pegando toque na image
                child: GestureDetector(
                  child: Image.asset("assets/images/executar.png"),
                  onTap: () {
                    _executar();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  child: Image.asset("assets/images/pausar.png"),
                  onTap: () {
                    _pausar();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  child: Image.asset("assets/images/parar.png"),
                  onTap: () {
                    _parar();
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "-",
                style: TextStyle(fontSize: 50, color: Colors.blue),
              ),
              Slider(
                  value: volume,
                  min: 0,
                  max: 1,
                  //divisions: 10,
                  onChanged: (novoVolume) {
                    setState(() {
                      volume = novoVolume;
                    });
                  }),
              const Text(
                "+",
                style: TextStyle(fontSize: 35, color: Colors.blue),
              ),
            ],
          ),
        ])));
  }
}
