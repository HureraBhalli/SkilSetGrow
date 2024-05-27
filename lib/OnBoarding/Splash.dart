import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skill_set_grow/OnBoarding/Boarding-I.dart';



class Splash extends StatefulWidget {

  static const String id = 'Splash';


  const Splash({super.key});
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      if (mounted) { // Make sure that the context is still available
        Navigator.of(context).pushReplacementNamed(Boarding1.id);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/pictures/Logo.png'),
          ],
        ),
      ),

    );
  }
}




