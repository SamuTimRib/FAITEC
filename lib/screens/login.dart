import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back), // Ícone de seta para voltar
                      onPressed: () {
                        // Implemente a ação para voltar à página anterior aqui
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  'assets/images/PlayROLE.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Digite seu email",
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Senha",
                            hintText: "Digite sua senha",
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Button(() {}, "Entrar"),
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () {
                          // Implemente a ação que desejar ao clicar no texto "Esqueceu a senha?"
                        },
                        child: const Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
