import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  final String texto;

  Sobre(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\nNossa missão:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue),
            ),
            Text(
              "\nLevar o turismo de uma maneira divertida!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "\nPara mais informações acesse nosso site: uaigo.com.br"
              "\n Ou clique no botão abaixo para obter nossos contatos",
              style: TextStyle(fontSize: 14),
            ),
            Image.asset("assets/images/Logo.png",
                width: 283, height: 243, fit: BoxFit.cover),
            ElevatedButton(
                child: Text('AJUDA'),
                onPressed: () => print("Telefone de contato : 31 92382 47232 "
                    " suporteuaigo@gmail.com")),
          ],
        ),
      ),
    );
  }
}
