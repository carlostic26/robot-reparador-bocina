import 'package:flutter/material.dart';
import 'package:robotbocina/presentation/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        AnimatedBackground(),
        Column(
          children: [
            AppBar(
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
              actions: [
                IconButton(
                    onPressed: showInfoDialog(),
                    icon: const Icon(
                      Icons.info,
                      color: Colors.white,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  width: 100,
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://i.ytimg.com/vi/XosdL2MuUNk/maxresdefault.jpg',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  children: [
                    Text(
                      'Limpia el agua residual',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      'Saca el polvo interno del telefono',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      'Extrae toda la humedad interna',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Elegir duración de limpieza',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: GridView.count(
                mainAxisSpacing: 25,
                crossAxisSpacing: 25,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Implementar funcionalidad para 5min
                    },
                    child: const Text('1min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Implementar funcionalidad para 10min
                    },
                    child: const Text('3min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Implementar funcionalidad para 15min
                    },
                    child: const Text('5min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Implementar funcionalidad para 20min
                    },
                    child: const Text('10min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Implementar funcionalidad para 25min
                    },
                    child: const Text('15min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //TODO: Implementar funcionalidad para 30min
                    },
                    child: const Text('20min'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }

  showInfoDialog() {}
}
