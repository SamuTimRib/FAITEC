import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/screens/feed.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/screens/cadastro.dart';

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
                      child: Button(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
                      }, "Entrar"),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(4.5), // Arredonda as extremidades
                child: Container(
                  width: desiredWidth,
                  height: 9.0, // Espessura da linha
                  color: Colors.black, // Cor da linha
                ),
              ),

              const SizedBox(height: 20.0), // Espaço vertical entre os botões
              Column(
                children: [
                  Button(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Cadastro()));
                      }, "Cadastre-se"),
                  const SizedBox(
                      height: 10.0), // Espaço vertical entre os botões
                  Button(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Feed()));
                      }, "Entrar sem conta"),
                ],
              ),
              const SizedBox(height: 20),
              // Barra personalizada com "ou" no meio e separação dos cantos
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            4.5), // Arredonda as extremidades
                        child: Container(
                          height: 9.0, // Espessura da barra
                          color: Colors.black, // Cor da barra
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "OU",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            4.5), // Arredonda as extremidades
                        child: Container(
                          height: 9.0, // Espessura da barra
                          color: Colors.black, // Cor da barra
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const Text(
                        "Entre com",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                          height:
                              20), // Espaço vertical entre a frase e as imagens
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width:
                                50, // Ajuste o tamanho da imagem conforme necessário
                            height: 50,
                            child: Image.asset(
                              'assets/images/google.png', // Caminho da imagem do Google
                              width:
                                  50, // Ajuste o tamanho da imagem conforme necessário
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                              width: 10), // Espaço horizontal entre as imagens
                          SizedBox(
                            width:
                                50, // Ajuste o tamanho da imagem conforme necessário
                            height: 50,
                            child: Image.asset(
                              'assets/images/facebook.png', // Caminho da imagem do Instagram
                              width:
                                  50, // Ajuste o tamanho da imagem conforme necessário
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                              width: 10), // Espaço horizontal entre as imagens
                          SizedBox(
                            width:
                                50, // Ajuste o tamanho da imagem conforme necessário
                            height: 50,
                            child: Image.asset(
                              'assets/images/apple.png', // Caminho da imagem da Apple
                              width:
                                  50, // Ajuste o tamanho da imagem conforme necessário
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
