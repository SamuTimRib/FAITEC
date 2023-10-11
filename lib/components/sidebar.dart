import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/feed.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Olá, Nome Usuário!",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
            },
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: const Text("Home"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Feed()));
            },
            leading: const Icon(Icons.feed, size: 20.0, color: Colors.white),
            title: const Text("Feed da Cidade"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person, size: 20.0, color: Colors.white),
            title: const Text("Perfil"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.star_border, size: 20.0, color: Colors.white),
            title: const Text("Suas Avaliações"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.calendar_month, size: 20.0, color: Colors.white),
            title: const Text("Eventos"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Configurações"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile( // Adicione o item "Sair" aqui
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
            },
            leading: const Icon(Icons.logout, size: 20.0, color: Colors.white),
            title: const Text("Sair"),
            textColor: Colors.white,
            dense: true,
          ),
        ],
      ),
    );
  }
}