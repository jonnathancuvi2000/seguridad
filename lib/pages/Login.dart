import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practica1/comun/temas.dart';

import '../components/HeaderWidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  Color _primariColor = Color(0xFF4C53A2);
  Color _accentColor = Color(0xFF0071bc);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
            ),
            // login form
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Inicio Seccion",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: _primariColor),
                    ),
                    Text(
                      "Ingrese en su cuenta",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextField(
                          decoration: TemasAyuda().textInputDecoracion(
                              "Correo", "Ingrese su correo"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: TemasAyuda().textInputDecoracion(
                            "Contrasena",
                            "Ingrese su contrasena",
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                          alignment: Alignment.topRight,
                          child: Text('Olvido su contrasena?'),
                        ),
                        Container(
                          decoration: TemasAyuda().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: TemasAyuda().buttonStyle(),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "Ingresar".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "Si no tiene un cuenta? "),
                                TextSpan(
                                    text: "Regsitrese",
                                    style: TextStyle(
                                      color: _accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, '/registrarUsuario');
                                      })
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
