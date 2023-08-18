import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;

  const Logo({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/tag-logo.png'),
              //image: AssetImage('assets/chatImg.png'),
              // fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(titulo, style: TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
