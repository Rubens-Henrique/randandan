import 'package:flutter/material.dart';
import 'sql_helper.dart';

class TelaUsuario extends StatefulWidget {
  @override
  _TelaUsuarioState createState() => _TelaUsuarioState();
}

class _TelaUsuarioState extends State<TelaUsuario> {
  int id = 0; // Variável para armazenar o ID da tabela.
  String name = '';
  int age = 0;
  String email = '';

  @override
  void initState() {
    super.initState();
    // Chame a função resgataDados para obter os dados da tabela.
    SQLHelper.resgataDados().then((data) {
      if (data.isNotEmpty) {
        // Atualize o estado da tela com os dados obtidos.
        setState(() {
          id = data[0]['id']; // Obtém o ID da tabela.
          name = data[0]['nome'];
          email = data[0]['email'];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil do Usuário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nome: $name',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                SQLHelper.apagaDado(id);
              },
              child: Text('Excluir Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
