import 'package:example/mapauaigo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'Cadastro.dart';
import 'Sobre.dart';
import 'profile.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();


  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Inicio(),
  ));
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    Home("Início"),
    CadastroScreen(),
    Sobre(
        "O aplicativo UAI, GÔ é um aplicativo que visa ajudar as viajantes a encontrarem não só os "
        "destinos mais atrativos para se divertir, como também buscar restaurantes,hospedagem e muito mais.Tudo isso em um só aplicativo"),
    TelaUsuario(),
    Mapaa(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UAI, GÔ"),
      ),
      body: _telas[_indiceAtual],
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text('Início'),
              selected: _indiceAtual == 0,
              onTap: () {
                onTabTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('Usuário'),
              selected: _indiceAtual == 1,
              onTap: () {
                onTabTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_rounded, color: Colors.black),
              title: Text('Sobre o App'),
              selected: _indiceAtual == 2,
              onTap: () {
                onTabTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text('Perfil'),
              selected: _indiceAtual == 3,
              onTap: () {
                onTabTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_rounded, color: Colors.black),
              title: Text('Uaigoso'),
              selected: _indiceAtual == 4,
              onTap: () {
                onTabTapped(4);
                Navigator.pop(context);
              },
            ),
          ], // children
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String texto;

  Home(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _image(),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              '\n\n\nBem vindo ao UAI, GÔ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'PermanentMarker-Regular',
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CadastroScreen()));
              },
              child: Text('Fazer login'),
            ),
          ),
          Image.asset(
            "assets/images/Logo.png",
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return Image.asset(
      "assets/images/ti1.webp",
      opacity: const AlwaysStoppedAnimation(.5),
      fit: BoxFit.cover,
    );
  }

  Widget _logo() {
    return Image.asset(
      "assets/images/Logo.png",
    );
  }
}
