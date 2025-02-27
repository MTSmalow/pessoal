import 'package:flutter/material.dart';
import 'tela2.dart';

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 1")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tela2()),
            );
          },
          child: Hero(
            tag: "imagem",
            child: Image.network(
              "https://picsum.photos/150/150",
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
