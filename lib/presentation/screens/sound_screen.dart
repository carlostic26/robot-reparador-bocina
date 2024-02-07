import 'package:flutter/material.dart';
import 'package:robotbocina/presentation/screens/screens.dart';

class SoundScreen extends StatefulWidget {
  int time;

  SoundScreen({required this.time, super.key});

  @override
  State<SoundScreen> createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen> {
  // TODO: mientras haya sonido, se reproducirá una lista de textos, que digan:
  // limpiando bocina...
  // extrayendo particulas de agua...
  // reparando bocina y parlante...
  // reduciendo humedad interna...

  // mensaje static: por favor sacuda el telefono cada 15 segundos

  // TODO: mientras haya sonido, se reproducirá una lista de textos, que digan:
  // extrayendo polvo del microfono...
  // eliminando impurezas...
  // extrayendo microparticulas...

  // mensaje static: por favor sacuda el telefono cada 15 segundos

  List<String> avisos = [
    'limpiando bocina...',
    'limpiando bocina...',
    'limpiando bocina...'
  ];

  //function que recibe una lista de string, y cada 2 segundos retorna o imprime un aviso diferente
  //dicho aviso será puesto en el widget texto

  //dicha funcion debe recibir el tiempo como paramentro de la extra clase
  // int time = widget.time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBackground(),
          Column(
            children: [
              AppBar(
                leading: const BackButton(color: Colors.white),
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: const Text(
                  'Robot reparador de bocina',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 250,
                    width: 250,
                    child: //imagen icon or sound
                        Placeholder()),
                SizedBox(
                  height: 10,
                ),
                Text('reparando...'),
                SizedBox(height: 100),
                Text('por favor sacuda el telefono cada 15 segundos'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
