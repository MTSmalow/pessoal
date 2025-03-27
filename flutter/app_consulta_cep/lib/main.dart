import 'package:flutter/material.dart';
import 'cep_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Busca de CEP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _cepController = TextEditingController();
  String _resultado = 'Digite um CEP para buscar';

  void _buscarCep() async {
    String cep = _cepController.text.trim();
    if (cep.isNotEmpty && cep.length == 8) {
      var dados = await CepService.buscarCep(cep);
      if (dados != null && !dados.containsKey('erro')) {
        setState(() {
          _resultado =
              "Endereço: ${dados['logradouro']}, ${dados['bairro']}, ${dados['localidade']}-${dados['uf']}";
        });
      } else {
        setState(() {
          _resultado = "CEP não encontrado.";
        });
      }
    } else {
      setState(() {
        _resultado = "Digite um CEP válido (8 dígitos).";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Busca de CEP")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _cepController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Digite o CEP",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _buscarCep,
              child: const Text("Buscar"),
            ),
            const SizedBox(height: 16),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
