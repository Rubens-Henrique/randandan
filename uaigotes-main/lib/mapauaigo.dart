import 'package:example/pages/pontosturistico_page.dart';
import 'package:flutter/material.dart';

class Mapaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pontos Locais',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PontosTuristicosPage(),
    );
  }
}
