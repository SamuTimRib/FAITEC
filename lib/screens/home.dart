import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              Button(() {}, "Entrar"),
              Button(() {}, "Cadastre-se"),
              Button(() {}, "Entrar sem conta"),
            ],
          ),
        ],
      ),
    );
  }
}
