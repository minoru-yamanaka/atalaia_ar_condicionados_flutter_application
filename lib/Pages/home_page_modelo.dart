import 'package:atalaia_ar_condicionados_flutter_application/Config/app_colors.dart';
import 'package:atalaia_ar_condicionados_flutter_application/Config/app_text_style.dart';
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
    // return const Placeholder();
    return Scaffold(
      //corpo
      backgroundColor: AppColors.backgroundColorPages,
      appBar: AppBar(
        title: Text("Meus projetos", style: AppTextStyle.titleAppBar),
        // style: TextStyle(
        //   fontSize: 27,
        //   fontWeight: FontWeight.bold,
        //   letterSpacing: -1,
      ),
      body:
       Padding(
        //card
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Column(
          children: [
            Text(
              "Efeito borboleta",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.folder_copy,
                            size: 30,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 14),
                          Text(
                            "App de notas",
                            style: AppTextStyle.titleAppBar.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // texto
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                      child: Text(
                        "Aplicativo para gerenciamento de notas para os alunos do Senac",
                        style: AppTextStyle.subtitlePages.copyWith(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.orange,
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Ver Projeto"),
                          ),
                        ],
                      ),
                    ),
                    // button
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
