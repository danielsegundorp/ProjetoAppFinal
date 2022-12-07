// ignore_for_file: prefer_const_constructors

import 'package:app_quiz_fatec/pages/tela_assunto.dart';
import 'package:app_quiz_fatec/pages/tela_boas_vindas.dart';
import 'package:app_quiz_fatec/pages/tela_cadastro.dart';
import 'package:app_quiz_fatec/pages/tela_login.dart';
import 'package:app_quiz_fatec/pages/tela_quizz.dart';
import 'package:app_quiz_fatec/pages/tela_resultado.dart';
import 'package:app_quiz_fatec/pages/tela_sobre.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Quiz FatecRP',
    initialRoute: 't1',
    routes: {
      't1': (context) => TelaBoasVindas(),
      't2': (context) => TelaLogin(),
      't3': (context) => TelaCadastro(),
      't4': (context) => TelaAssunto(),
      't5': (context) => TelaQuizz(),
      't6': (context) => TelaResultado(acertos: 3),
      't7': (context) => TelaSobre(),
    },
  ));
}
