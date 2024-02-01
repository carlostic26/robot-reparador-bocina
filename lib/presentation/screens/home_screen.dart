import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Robot reparador de bocina'),
        actions: [
          IconButton(onPressed: showInfoDialog(), icon: const Icon(Icons.info))
        ],
      ),
      body: Column(
        children: [
          const Row(
            children: [
              //TODO: img icon logo app
              //TODO: lista de funcionaliodades
            ],
          ),
          const Text('Elegir duración de limpieza'),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: [
              ElevatedButton(
                onPressed: () {
                  //TODO: Implementar funcionalidad para 5min
                },
                child: const Text('5min'),
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: Implementar funcionalidad para 10min
                },
                child: const Text('10min'),
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: Implementar funcionalidad para 15min
                },
                child: const Text('15min'),
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: Implementar funcionalidad para 20min
                },
                child: const Text('20min'),
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: Implementar funcionalidad para 25min
                },
                child: const Text('25min'),
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: Implementar funcionalidad para 30min
                },
                child: const Text('30min'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  showInfoDialog() {}
}
