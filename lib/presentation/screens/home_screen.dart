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
                      'Limpia el agua residual interna\nSaca el polvo interno del telefono\nExtraer toda la humedad\nLimpia el microfono',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => SoundScreen(
                                    time: 1,
                                  )));
                    },
                    child: const Text('1min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressed:
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SoundScreen(
                                      time: 3,
                                    )));
                      };
                    },
                    child: const Text('3min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressed:
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SoundScreen(
                                      time: 5,
                                    )));
                      };
                    },
                    child: const Text('5min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressed:
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SoundScreen(
                                      time: 10,
                                    )));
                      };
                    },
                    child: const Text('10min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressed:
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SoundScreen(
                                      time: 15,
                                    )));
                      };
                    },
                    child: const Text('15min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressed:
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SoundScreen(
                                      time: 20,
                                    )));
                      };
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
