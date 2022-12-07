// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaBoasVindas extends StatelessWidget {
  const TelaBoasVindas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Quiz Time',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Image.asset('lib/images/quiz_logo.jpg'),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Seja Bem-Vindo(a)!!!',
                  style: TextStyle(fontSize: 30, color: Colors.white30),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('pressionado');
                  Navigator.pushNamed(context, 't2');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
                child: Text('INICIAR', style: TextStyle(fontSize: 50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
