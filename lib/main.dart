import 'package:flutter/material.dart';
import 'package:robot_bocina/presentation/screens/screens.dart';

/* 
AppOpenAd? openAd;
bool isAdLoaded = false;

Future<void> loadAd() async {
  Ads ads = Ads();

  await AppOpenAd.load(
    adUnitId: ads.openAd,
    request: const AdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        print("ad is loaded ok");
        openAd = ad;
        isAdLoaded =
            true; // Actualiza isAdLoaded cuando el anuncio se ha cargado correctamente.
        openAd!.show();
      },
      onAdFailedToLoad: (error) {
        print("ad dailed to load $error");
        isAdLoaded =
            false; // Actualiza isAdLoaded cuando el anuncio falla al cargar.
      },
    ),
    orientation: AppOpenAd.orientationPortrait,
  );
} */

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
/* 
  MobileAds.instance.initialize();
  await MobileAds.instance.initialize();
  await loadAd();
  cancelAds(); */

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Robot reparador',
      theme: MyTheme.light,
      home: LoadingScreen(),
    );
  }
}
