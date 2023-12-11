import 'package:flutter/material.dart';
import 'sql_helper.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: 'senha'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _cpfController,
              decoration: InputDecoration(labelText: 'CPF'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode acessar os dados usando os controladores
                String nome = _nomeController.text;
                String senha = _cpfController.text;
                String email = _emailController.text;

                // Faça algo com os dados, como enviar para um servidor ou armazenar localmente

                SQLHelper.adicionarEmail(nome, email, senha);

                print('Nome: $nome, senha: $senha, Email: $email');
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Certifique-se de descartar os controladores ao sair da tela para evitar vazamentos de memória
    _nomeController.dispose();
    _senhaController.dispose();
    _cpfController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
