import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String establishmentAvatar;
  final String establishmentName;
  final String postTime;
  final String postDescription;
  final String postImage;

  const Post( this.establishmentAvatar,  this.establishmentName,  this.postTime,  this.postDescription,  this.postImage,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child:  Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(establishmentAvatar),
                radius: 30.0,
              ),
              const SizedBox(width: 16.0),
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
            children: <Widget>[
               Text(
                postDescription,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0), // Bordas arredondadas
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0), // Bordas arredondadas
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
