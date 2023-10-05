import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {

  final String text;
  final String secText;
  const TextInput(this.text,this.secText,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          hintText: secText,
          filled: true,
          fillColor: Colors.grey[200], // Cor de fundo cinza
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0), // BorderRadius
            borderSide: BorderSide.none, // Remove a borda
          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  
  final String text;
  final String secText;
  const TextInputField(this.text,this.secText,{super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: text,
        hintText: secText,
        filled: true,
        fillColor: Colors.grey[200], // Cor de fundo cinza
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0), // BorderRadius
          borderSide: BorderSide.none, // Remove a borda
        ),
      ),
    );
  }
}
