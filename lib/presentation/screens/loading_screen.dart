import 'package:flutter/material.dart';
import 'package:robotbocina/presentation/screens/screens.dart';

class LoadingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonEnabled = ref.watch(buttonEnabled_rp);

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        children: [
          AnimatedBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Container(
                  height: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHBfFRTy1XLSopVeA1w9cAjRICacYdQIosMTut7i9BpmKWi0_GU3x4urvCjF27uENJzW7Y_uopy6s557quBbvh9x4Cd6SwLlW28-Eyu7IvLGqe8x_DXotvRBj7D7EAOIXIHKBlBG96XO4VpY7oYHgxqmw66wS8FH6GTxg87owY5GaJ34UJHDWi2bw/s320/icon%20700x700.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearPercentIndicator(
                        width: 250.0,
                        lineHeight: 10,
                        percent: 1.0,
                        animation: true,
                        animationDuration: 9000, // 7 sec para cargar la barra
                        progressColor: Colors.green,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cargando Robot reparador de pixeles",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: TextButton(
                      onPressed: buttonEnabled ? () => isLoaded(context) : null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            buttonEnabled ? Colors.green : Colors.grey),
                      ),
                      child: Text(
                        'Continuar',
                        style: TextStyle(
                          fontSize: 12,
                          color: buttonEnabled ? Colors.white : Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void isLoaded(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const HomeScreen()));
  }
}
