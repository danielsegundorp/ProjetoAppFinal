import 'package:flutter/material.dart';

class TelaQuizz extends StatefulWidget {
  const TelaQuizz({Key? key}) : super(key: key);

  @override
  State<TelaQuizz> createState() => _TelaQuizzState();
}

class _TelaQuizzState extends State<TelaQuizz> {
  @override
  Widget build(BuildContext context) {
    int questaoNumero = 1;

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
                    child: Text('Questão $questaoNumero de 10')),
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text('Pergunta: \n\n', style: TextStyle(fontSize: 30))),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 1');
                    },
                    child:
                        Text('Alternativa A', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 2');
                    },
                    child:
                        Text('Alternatira B', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 3');
                    },
                    child:
                        Text('Alternativa C', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 4');
                    },
                    child:
                        Text('Alternativa D', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 5');
                      Navigator.pushNamed(context, 't6');
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