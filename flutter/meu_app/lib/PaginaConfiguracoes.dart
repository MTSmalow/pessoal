import 'package:flutter/material.dart';

void main() {
  runApp(const PaginaConfiguracoes());
}

class PaginaConfiguracoes extends StatelessWidget {
  const PaginaConfiguracoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: const Center(
        child: Text('Página de Configurações', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
