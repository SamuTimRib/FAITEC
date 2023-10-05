import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/text_input.dart';

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
                        backgroundImage: AssetImage('assets/images/profile_image.png'), // Sua imagem de perfil
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
                  const Row(
                    children: [
                      Expanded(
                        child: TextInput('Nome','Digite seu nome'),
                      ),
                      Expanded(
                        child: TextInput('Sobrenome','Digite seu sobrenome'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Row(
                    children: [
                      Expanded(
                        child: TextInput('Dia','DD'),
                      ),
                      Expanded(
                        child: TextInput('Mês','MM'),
                      ),
                      Expanded(
                        child: TextInput('Ano','AAAA'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const TextInputField("E-mail", "Digite seu e-mail"),
                  const SizedBox(height: 16.0),
                  const TextInputField("Celular", "Digite seu celular"),
                  const SizedBox(height: 16.0),
                  const Row(
                    children: [
                      Expanded(
                        child: Expanded(
                          child: TextInput("Senha","Digite sua senha"),
                        ),
                      ),
                      Expanded(
                        child: TextInput("Repetir Senha","Repita sua senha"),
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