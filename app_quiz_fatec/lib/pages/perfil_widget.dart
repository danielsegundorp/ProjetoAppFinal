// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PerfilWidget extends StatelessWidget {
  //Atributos da classe
  final String name;
  final String contato;
  final String foto;
  //Contrutor da classe
  const PerfilWidget(this.name, this.contato, this.foto, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Margem
      margin: EdgeInsets.all(10),
      //margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
      padding: EdgeInsets.all(5),

      width: MediaQuery.of(context).size.width,
      height: 350,

      decoration: BoxDecoration(
        color: Colors.black38,
        border: Border.all(width: 5, color: Colors.black87),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.red.shade900,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            contato,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          // FOTO DEVELOPERS
          Expanded(
            child: Image.asset('lib/images/$foto'),
          )
        ],
      ),
    );
  }
}
