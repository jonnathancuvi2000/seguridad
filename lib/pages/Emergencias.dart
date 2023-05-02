import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica1/components/EmergenciasLista.dart';
import 'package:practica1/components/Top_navEmergencias.dart';

class Emergencias extends StatefulWidget {
  final GlobalKey<ScaffoldState> data;
  const Emergencias({super.key, required this.data});

  @override
  State<Emergencias> createState() => _EmergenciasState();
}

class _EmergenciasState extends State<Emergencias> {
  Color _primariColor = Color(0xFF4C53A2);
  Color _accentColor = Color(0xFF0071bc);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // NabBar
          Top_navEmergencias(data: widget.data),

          // Estado de Emergencias
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(10),
            child: Text(
              "Estado de Emergencias",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: _primariColor, //0xFF4C53A2
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: Color.fromARGB(255, 153, 247, 169),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey, //                   <--- border color
                width: 1.0,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "No hay emergencias",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Comunidad: ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("Barrio las orquideas",
                            style: TextStyle(fontSize: 16))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Administrador: ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Juan Perez",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/emergencia");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Text("Ver detalle"),
                  ),
                )
              ],
            ),
          ),
          // Emergencias
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(10),
            child: Text(
              "Cual su Emergencia",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: _primariColor, //0xFF4C53A2
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                // color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: ListView(
                children: [
                  // Lista de emergencias
                  EmergenciasLista()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
