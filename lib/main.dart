import 'package:flutter/material.dart';
import 'package:skill_set_grow/OnBoarding/Boarding-I.dart';
import 'package:skill_set_grow/OnBoarding/Boarding-II.dart';
import 'package:skill_set_grow/OnBoarding/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const Splash(),

      routes: {
        Splash.id: (context) => const Splash(),
        Boarding1.id: (context) => const Boarding1(),
        Boarding2.id: (context) => const Boarding2(),


      },
      onGenerateRoute: (settings) {
        // Here you can add condition for each route you want to handle dynamically
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Splash()); // Fallback to the Splash screen as an example
      },

    );
  }
}
