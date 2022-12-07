// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/login_controller.dart';
import 'util.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);
  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  // var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    txtEmail.text = '';
    txtSenha.text = '';
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz Time Fatec')),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Image.asset('lib/images/quiz_logo.jpg'),
            ),
            campoTexto('Email', Icons.email, txtEmail),
            campoTexto('Senha', Icons.lock, txtSenha, senha: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text(
                    "Esqueceu a senha?",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          'Informe seu e-mail',
                          style: GoogleFonts.roboto(
                            fontSize: 24,
                            color: Colors.blueGrey.shade700,
                          ),
                        ),
                        titlePadding: EdgeInsets.all(20),
                        content: SizedBox(
                          width: 350,
                          height: 80,
                          child: Column(
                            children: [
                              campoTexto('E-mail', Icons.email, txtEmail),
                            ],
                          ),
                        ),
                        backgroundColor: Colors.blueGrey.shade50,
                        actionsPadding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size(120, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'cancelar',
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.blueAccent.shade700,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent.shade700,
                              minimumSize: Size(120, 50),
                            ),
                            onPressed: () async {
                              if (txtEmail.text.isNotEmpty) {
                                LoginController().esqueceuSenha(txtEmail.text);
                                sucesso(context, 'E-mail enviado com sucesso.');
                              } else {
                                erro(context,
                                    'Informe o e-mail para recuperar a senha.');
                              }

                              Navigator.pop(context);
                            },
                            child: Text(
                              'enviar',
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                LoginController().login(context, txtEmail.text, txtSenha.text);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent.shade700,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                'Entrar',
                style: GoogleFonts.roboto(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    "Novo usuário?",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                  onPressed: () => {Navigator.pushNamed(context, 't3')},
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        backgroundColor: Colors.black54,
        onPressed: (() {
          print('pressionado 3');
          Navigator.pushNamed(context, 't7');
        }),
      ),
    );
  }
}
