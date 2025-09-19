import 'package:flutter/material.dart';

// 1. A classe do Widget (imutável)
class MyHomePage extends StatefulWidget {
  // O construtor e as propriedades finais ficam aqui.
  const MyHomePage({super.key, required this.title});

  final String title;

  // Este método cria o estado mutável para o widget.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 2. A classe do Estado (mutável)
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Para acessar a propriedade 'title' do widget, usamos 'widget.title'
        title: Text(widget.title),
      ),
      // corpo da tela 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
