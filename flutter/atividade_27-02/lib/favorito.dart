import 'package:flutter/material.dart';

class favorito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorito"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "imagem1",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://i.pinimg.com/originals/a8/d4/ec/a8d4ec82e04e0cff576f12c83c24564a.gif",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Hero(
              tag: "imagem2",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjWYpBAxjoO3r8kBJH0p3XP5HeG2NiHDe2_nyN0lYxU9V2pmmNZps9hDNXkqhMpGP3nbxm4D1LfFL4n2BW8pkXouZ9etwWfycliEY_nLauDudFVUy_QLyKp0evFhU3kyeeDS_BTHrgnE8R7/s640/olha+que+coisa+mais+fofa.gif",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
