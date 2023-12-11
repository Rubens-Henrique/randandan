import 'package:flutter/material.dart';

import '../models/ponto.dart';

class PontosRepositorios extends ChangeNotifier {
  final List<Ponto> _pontos = [
    Ponto(
      nome: 'Praça da Liberdade ',
      endereco: 'Praça da Liberdade, s/n - Funcionários, Belo Horizonte - MG',
      foto:
          'https://prefeitura.pbh.gov.br/sites/default/files/noticia/img/2017-09/Pra%C3%A7a%20da%20Liberdade%20Foto%20Divulga%C3%A7%C3%A3o.jpg',
      latitude: -19.9341685,
      longitude: -43.9379572 - 43.9379572,
    ),
    Ponto(
      nome: 'Mercado Central ',
      endereco: 'Av. Augusto de Lima, 744 - Centro, Belo Horizonte - MG',
      foto:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f5/df/f1/mercado.jpg?w=1200&h=1200&s=1',
      latitude: -19.92479,
      longitude: -43.93773,
    ),
  ];

  List<Ponto> get pontos => _pontos;
}
