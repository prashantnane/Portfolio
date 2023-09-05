import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lottie/lottie.dart';
import 'package:prashant_nane_portfolio/firebase_options.dart';

import './views/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.cyan,
      ),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return AnimatedSplashScreen(
                splash: Lottie.asset('assets/loading.json'),
                duration: 1500,
                nextScreen: const HomePage(),
                splashTransition: SplashTransition.fadeTransition,
                animationDuration: const Duration(seconds: 1),
                splashIconSize: 150,
                backgroundColor: Color.fromARGB(255, 0, 21, 72));
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
