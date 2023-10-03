import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20.0), // Espaçamento ajustado para 20 pixels
                      child: Image.asset(
                        'assets/images/PlayROLE.png', // Caminho da imagem
                        width:
                            200, // Ajuste o tamanho da imagem conforme necessário
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Button(() {}, "Entrar"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}