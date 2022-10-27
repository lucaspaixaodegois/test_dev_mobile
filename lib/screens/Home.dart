import 'package:flutter/material.dart';
import 'package:link_text/link_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String _linkGit =
      "https://github.com/lucaspaixaodegois/test_dev_mobile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                padding: const EdgeInsets.all(20),
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                        text:
                            '\n Olá, sou o Lucas Gois, bacharel em sistemas de informação e este é meu app de apresentação.',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n\nO  desafio é simples: ',
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
                          TextSpan(
                            text:
                                '\n\nSeguem as decisões tomadas e o raciocínio que segui para responder este desafio:',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n1) ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'Inicialmente, pensei em fazer um app bem simples, uma view com três botões centralizados ao meio da tela, escrito “abrir áudio”, “abrir pdf”, “abrir vídeo” e direcionar para cada tela conforme os botões fossem clicados.  Todavia, quis explorar um pouco mais as estratégias, então, resolvi utilizar bottomNavigationBar, que é responsável pela navegação entre telas partindo do clique do usuário, para ficar visualmente mais agradável, com o intuito de trazer uma melhor experiência para o usuário. Nesse sentido, criei três telas, quais sejam: home, áudio e pdf.',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n\n2) ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'Para reproduzir o vídeo utilizei a biblioteca video_player. Consegui apenas reproduzir com os botões flutuantes play/pause.',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n\n3) ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'Para a reprodução do áudio, foi utilizada a biblioteca audioplayers, que fornece métodos de play, pause, stop.  Com isso, utilizei o GestureDetector, com o objetivo de identificar o toque nas imagens e disparar as funções supracitadas. Para a barra de volume, utilizei o componente slider que ao arrastar para a esquerda ou para a direita o setState atualiza o valor do volume.',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n\n4) ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'Para abrir o pdf, utilizei a biblioteca cached_pdfview, consegui apenas carregar o arquivo.',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n\n5) ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'Desde já agradeço a oportunidade de participar deste processo seletivo. Infelizmente, não consegui entregar tudo que foi solicitado em virtude do tempo, mas me coloco à disposição para mais informações e reitero meu profundo interesse em fazer parte desta equipe, oportunidade que terei para desenvolver e aprimorar meus conhecimentos.',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n\nSegue link do projeto:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                '\nhttps://github.com/lucaspaixaodegois/test_dev_mobile.',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: '\n\nAtenciosamente,',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '\nLucas Francisco Paixão de Gois.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ])))));
  }
}
