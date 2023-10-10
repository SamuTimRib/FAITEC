import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post.dart';
import 'package:flutter_application_1/components/sidebar.dart';
import 'home.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Colors.green[700],
      type: SideMenuType.slide,
      menu: const Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: SideBar(),
      ),
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      child: SideMenu(
          key: _sideMenuKey,
          menu: const SideBar(),
          type: SideMenuType.slide,
          onChange: (isOpened) {
            setState(() => isOpened = isOpened);
          },
          child: IgnorePointer(
              ignoring: isOpened,
              child: Scaffold(
            appBar: AppBar(
              title: const Text('Feed da cidade'),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  toggleMenu();
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
              ],
            ),
            body: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile_image.png'),
                            radius: 30.0,
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Olá, Nome do usuário!',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                        color: Colors.grey,
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o que está achando dos Rolês',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          // Adicione a lógica para escolher uma imagem aqui
                        },
                      ),
                    ],
                  ),
                ),
                const Post(
                  'assets/images/Pico.png',
                  'Pico - Bar Underground',
                  'Postado à 7 Min.',
                  'Venha jogar uma sinuca em nosso bar!',
                  'assets/images/Pico.png'
                ),
                const Post(
                  'assets/images/OficinadoChoppPerfil.png',
                  'Oficina do Chopp',
                  'Postado à 23 Min.',
                  'Já estamos funcionando a todo vapor!',
                  'assets/images/OficinaChopp.png'
                )
                // Aqui você pode adicionar mais postagens ou conteúdo do feed da cidade
              ],
            ),
          ),
        ),
      ),
    );
  }
}
