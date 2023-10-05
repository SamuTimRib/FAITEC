import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed da cidade'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Adicione a lógica para abrir a side bar aqui
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Adicione a lógica para voltar aqui
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
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
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16.0), // Margem nos cantos
            decoration: BoxDecoration(
              color: Colors.grey[200], // Fundo cinza
              borderRadius: BorderRadius.circular(12.0), // Borda arredondada
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Escreva o que está achando dos Rolês',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    // Adicione a lógica para escolher uma imagem aqui
                  },
                ),
              ],
            ),
          ),
          // Aqui você pode adicionar o conteúdo do feed da cidade abaixo do campo de entrada
          Expanded(
            child: Center(
              child: Text('Conteúdo do feed da cidade aqui'),
            ),
          ),
        ],
      ),
    );
  }
}
