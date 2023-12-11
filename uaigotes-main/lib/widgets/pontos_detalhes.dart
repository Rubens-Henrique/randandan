import 'package:flutter/material.dart';

import '../models/ponto.dart';

class PontosDetalhes extends StatelessWidget {
  Ponto ponto;
  PontosDetalhes({Key? key, required this.ponto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          Image.network(ponto.foto,
              height: 250,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Text(
              ponto.nome,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 60, left: 24),
            child: Text(
              ponto.endereco,
            ),
          ),
        ],
      ),
    );
  }
}
