import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado({Key? key, required this.acertos}) : super(key: key);

  final int acertos;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quizz Time')),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 158, 154, 163),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Resultado', style: TextStyle(fontSize: 30)),
              Text('Você acertou $acertos de 10 perguntas',
                  style: TextStyle(fontSize: 30)),
              ElevatedButton(
                onPressed: () {
                  print('pressionado 1');
                  Navigator.popAndPushNamed(context, 't4');
                },
                child:
                    Text('Voltar aos Assuntos', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('pressionado 2');
                  Navigator.popAndPushNamed(context, 't1');
                },
                child: Text('Encerrar o Quizz', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
