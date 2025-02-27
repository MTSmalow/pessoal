import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 2")),
      body: Center(
        child: Hero(
          tag: "imagem",
          child: Image.network(
            "https://picsum.photos/300/300",
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
