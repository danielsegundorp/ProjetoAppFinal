// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class TelaAssunto extends StatefulWidget {
  const TelaAssunto({Key? key}) : super(key: key);

  @override
  State<TelaAssunto> createState() => _TelaAssuntoState();
}

class _TelaAssuntoState extends State<TelaAssunto> {
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
        body: Padding(
          padding: const EdgeInsets.all(60),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text('Usuário "xxxx" logado: \n\n', style: TextStyle(fontSize: 30))),
                Align(
                    alignment: Alignment.topRight,
                    child: Text('Selecione um assunto para prosseguir')),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Temas', style: TextStyle(fontSize: 30))),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado 1');
                  },
                  child: Text('Assunto 1', style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado 2');
                  },
                  child: Text('Assunto 2', style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado 3');
                  },
                  child: Text('Assunto 3', style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado 4');
                  },
                  child: Text('Assunto 4', style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 5');
                      Navigator.pushNamed(context, 't5');
                    },
                    child: Text('Proxima Tela', style: TextStyle(fontSize: 10)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

