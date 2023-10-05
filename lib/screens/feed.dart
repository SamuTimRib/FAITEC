import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed da cidade'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Adicione a lógica para abrir a side bar aqui
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Adicione a lógica para voltar aqui
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
                      backgroundImage: AssetImage('caminho_para_a_imagem.jpg'),
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
    );
  }
}
