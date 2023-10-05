import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Seção superior com imagem de perfil e informações
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.0, // Raio para torná-lo redondo
                        backgroundImage: AssetImage('assets/profile_image.png'), // Sua imagem de perfil
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Seu Nome',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Seu Sobrenome',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32.0), // Espaço entre a seção superior e os campos de entrada
                  // Seu código começa aqui
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Nome",
                              hintText: "Digite seu nome",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Sobrenome",
                              hintText: "Digite seu sobrenome",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Dia",
                              hintText: "DD",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Mês",
                              hintText: "MM",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Ano",
                              hintText: "AAAA",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "Digite seu e-mail",
                      filled: true,
                      fillColor: Colors.grey[200], // Cor de fundo cinza
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // BorderRadius
                        borderSide: BorderSide.none, // Remove a borda
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Celular",
                      hintText: "Digite seu celular",
                      filled: true,
                      fillColor: Colors.grey[200], // Cor de fundo cinza
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // BorderRadius
                        borderSide: BorderSide.none, // Remove a borda
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Senha",
                              hintText: "Digite sua senha",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Repetir Senha",
                              hintText: "Repita sua senha",
                              filled: true,
                              fillColor: Colors.grey[200], // Cor de fundo cinza
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0), // BorderRadius
                                borderSide: BorderSide.none, // Remove a borda
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Seu código termina aqui
                  const SizedBox(height: 16.0),
                  Button(() {}, "Cadastrar"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
