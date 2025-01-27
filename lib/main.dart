import 'package:flutter/material.dart';
import 'calculadora.dart'; // Importação correta.

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100, // Cor lilás no AppBar
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Layout Superior
          Expanded(
            flex: 3, // Maior proporção para o layout superior
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 90), // Espaçamento
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 239, 242),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                      borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Sombra preta translúcida
                          blurRadius: 10, // Desfoque da sombra
                          offset: const Offset(4, 4), // Deslocamento da sombra
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Calculadora(), // Widget Calculadora adicionado corretamente.
                  ),
                ),
              ],
            ),
          ),
          // Layout Central
          Expanded(
            flex: 1, // Proporção intermediária
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                // Adicione widgets aqui se necessário
              ],
            ),
          ),
          // Layout Inferior
          Container(
            height: 50, // Altura fixa menor
            color: Colors.white, // Cor branca
            alignment: Alignment.center,
            child: const Text(
              '',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

