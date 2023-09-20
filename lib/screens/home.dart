import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class Home extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    double parentWidth = MediaQuery.of(context).size.width;

    double desiredWidth = parentWidth * 0.85; // 85% da largura do pai

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
                      padding: const EdgeInsets.only(bottom: 100.0), // Adicione margem superior aqui
                      child: Image.asset(
                        'assets/images/PlayROLE.png', // Caminho da imagem
                        width: 200, // Ajuste o tamanho da imagem conforme necessário
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
              ClipRRect(
                borderRadius: BorderRadius.circular(4.5), // Arredonda as extremidades
                child: Container(
                  width: desiredWidth,
                  height: 9.0, // Espessura da linha
                  color: Colors.black, // Cor da linha
                ),
              ),
              // Adicione a frase "Entre com" e as imagens aqui
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  children: [
                    const Text(
                      "Entre com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10), // Espaço vertical entre a frase e as imagens
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png', // Caminho da imagem do Google
                          width: 40, // Ajuste o tamanho da imagem conforme necessário
                          height: 40,
                        ),
                        const SizedBox(width: 10), // Espaço horizontal entre as imagens
                        Image.asset(
                          'assets/images/instagram.png', // Caminho da imagem do Instagram
                          width: 40, // Ajuste o tamanho da imagem conforme necessário
                          height: 40,
                        ),
                        const SizedBox(width: 10), // Espaço horizontal entre as imagens
                        Image.asset(
                          'assets/images/apple.png', // Caminho da imagem da Apple
                          width: 40, // Ajuste o tamanho da imagem conforme necessário
                          height: 40,
                        ),
                      ],
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
