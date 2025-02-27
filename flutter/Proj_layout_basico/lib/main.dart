import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Layout Basico',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: PrimeiraPagina(),
    );
  }
}

class PrimeiraPagina extends StatelessWidget {
  const PrimeiraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("minha Tela"),
        leading: Icon(Icons.photo),
        actions: [
          Text("item 1"),
          Text("item 2"),
        ],
      ),
      body: Column(
        children: [
          Container(
              width: 400,
              height: 200,
              color: Colors.redAccent,
              child: Container(
                width: 50,
                height: 50,
                color: Color(0xff0718ff),
              )),
          Expanded(
              child: Container(
            width: 400,
            height: 100,
            color: Colors.amber,
          ))
        ],
      ),
    );
  }
}
