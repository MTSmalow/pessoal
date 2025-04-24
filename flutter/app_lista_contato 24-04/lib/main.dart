import 'package:flutter/material.dart';

void main() => runApp(const ContatosApp());

class ContatosApp extends StatelessWidget {
  const ContatosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contatos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListaContatosPage(),
    );
  }
}

class ListaContatosPage extends StatelessWidget {
  const ListaContatosPage({super.key});

  final List<Map<String, String>> contatos = const [
    {
      'nome': 'Fulano Souza',
      'endereco': 'Rua das Flores, 123',
      'telefone': '(11) 98765-4321',
      'email': 'fulano.souza@email.com',
      'foto': 'https://i.pravatar.cc/150?img=1',
    },
    {
      'nome': 'Beltrano Silva',
      'endereco': 'Av. Paulista, 1000',
      'telefone': '(11) 91234-5678',
      'email': 'beltrano.silva@email.com',
      'foto': 'https://i.pravatar.cc/150?img=2',
    },
    {
      'nome': 'Deltrano Mendes',
      'endereco': 'Rua Verde, 45',
      'telefone': '(21) 99876-5432',
      'email': 'deltrano.m@email.com',
      'foto': 'https://i.pravatar.cc/150?img=3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contatos')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          final contato = contatos[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(contato['foto']!),
              ),
              title: Text(
                contato['nome']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text('📍 ${contato['endereco']}'),
                  Text('📞 ${contato['telefone']}'),
                  Text('✉️ ${contato['email']}'),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}