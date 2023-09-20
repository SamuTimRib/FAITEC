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
                child: Button(() {}, "Entrar"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.5), // Arredonda as extremidades
                child: Container(
                  width: desiredWidth,
                  height: 9.0, // Espessura da linha
                  color: Colors.black, // Cor da linha
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Button(() {}, "Cadastre-se"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Button(() {}, "Entrar sem conta"),
              ),
              const SizedBox(height: 10.0), // Espaço vertical entre os botões e a barra

              // Barra personalizada com "ou" no meio e separação dos cantos
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.5), // Arredonda as extremidades
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
                        borderRadius: BorderRadius.circular(4.5), // Arredonda as extremidades
                        child: Container(
                          height: 9.0, // Espessura da barra
                          color: Colors.black, // Cor da barra
                        ),
                      ),
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
