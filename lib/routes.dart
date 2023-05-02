import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica1/pages/Chat.dart';
import 'package:practica1/pages/Dispositivos.dart';
import 'package:practica1/pages/Emergencias.dart';
import 'package:practica1/pages/GestionUsuarios.dart';
import 'package:practica1/pages/HomePage.dart';

class Routes extends StatelessWidget {
  final int index;
  final GlobalKey<ScaffoldState> data;
  const Routes({super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      Emergencias(data: data),
      const Dispositivos(),
      const GestionUsuarios(),
      const Chat(),
    ];
    return myList[index];
  }
}
