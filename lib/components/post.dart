import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String establishmentAvatar;
  final String establishmentName;
  final String postTime;
  final String postDescription;
  final String postImage;

  const Post(
    this.establishmentAvatar,
    this.establishmentName,
    this.postTime,
    this.postDescription,
    this.postImage, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(establishmentAvatar),
                radius: 30.0,
              ),
              const SizedBox(width: 14.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    establishmentName,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0), // Reduza o espaço entre o nome e o horário
                  Text(
                    postTime,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                postDescription,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 1.0), // Reduza o espaço entre o texto e a imagem
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.asset(
                    postImage,
                    width: 400.0,
                    height: 300.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
