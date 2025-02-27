import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 3"),
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
          child: Hero(
            tag: "imagem",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://media.tenor.com/ntw19Tfi_PgAAAAM/spinning-cat-ethel-cat.gif",
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
