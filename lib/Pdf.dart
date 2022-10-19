//importando libs
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

//iniciando stf pdf
class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  String url =
      'https://github.com/App2Sales/mobile-challenge/raw/master/os-lusiadas.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const PDF().fromUrl(
        url,
        placeholder: (double progress) => Center(child: Text('$progress %')),
        errorWidget: (dynamic error) => Center(child: Text(error.toString())),
      ),
    );
  }
}
