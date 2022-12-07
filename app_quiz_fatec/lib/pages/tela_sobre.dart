// ignore_for_file: prefer_const_constructors

import 'package:app_quiz_fatec/pages/perfil_widget.dart';
import 'package:flutter/material.dart';

class TelaSobre extends StatelessWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: Text('About us'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // CORPO DA TELA
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'App desenvolvido com o intuito de compartilhar o conhecimento de forma rápida e interativa\n',
                    style: TextStyle(fontSize: 30))),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Através de temas como; Games, Conhecimentos Gerais, Viagens, Copa do Mundo, Idiomas, \no usuário pode aprender e se divertir ao mesmo tempo.\n',
                    style: TextStyle(fontSize: 30))),
            Align(
                alignment: Alignment.center,
                child:
                    Text('DESENVOLVEDORES', style: TextStyle(fontSize: 30))),
            PerfilWidget('Luana Aparecida Nascimento',
                'luanacarolnascimento@gmail.com', 'luana.jpg'),
            PerfilWidget('Daniel Segundo Carvalho', 'dsctecnologia@gmail.com',
                'daniel.jpg'),
          ],
        ),
      ),
    );
  }
}
