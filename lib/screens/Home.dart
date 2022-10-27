import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
                text: const TextSpan(
                    text:
                        '\nOlá, sou o Lucas Gois, bacharel em sistemas de informação e este é meu app de apresentação.\n',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: <TextSpan>[
                  TextSpan(
                    text: '\n\n O  desafio é simples: ',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' \n\ncriar um aplicativo que acesse um JSON (content.json) e mostre o vídeo, áudio e PDF contidos nele para o usuário.',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  TextSpan(
                    text: '\n\n Requisitos: ',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        '           \n\n ● Quando usuário abrir cada um dos conteúdos (video, áudio e PDF) ele deve voltar sempre de onde parou na última vez;\n\n●O aplicativo deve funcionar para Android ou iOS.',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  TextSpan(
                    text: '\n\n Extras: ',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' \n\n● Utilizar animações para abertura dos conteúdos;\n\n ●Fazer com que as mídias se integrem com API nativas dos sistemas operacionais.\n    Ex.: permitir que o áudio seja controlado com a tela do celular travada;\n\n● Tocar vídeos criptografados de modo lazy loaded (não está incluído no JSON de content. Você mesmo pode escolher um vídoe criptografado).                    ',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ]))));
  }
}
