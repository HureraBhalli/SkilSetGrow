import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skill_set_grow/Components/MyButton.dart';
import 'package:skill_set_grow/OnBoarding/Boarding-III.dart';




class Boarding2 extends StatelessWidget {
  static const String id = 'Boarding2';
  const Boarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(flex: 2),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Take free ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 22)),
              Text('Trainings', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 22, color: Color(0xffCC5600))),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You can upload the videos  and offer video call training \n Even you can track your all trainee progress',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.black),
              ),
            ],
          ),
          const Spacer(flex: 3),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/pictures/Board2.png'),
            ],
          ),
          const Spacer(flex: 4),







          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: MyButton(title: 'Next', onpress: ()  {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => Boarding3(),
                transitionDuration: Duration(milliseconds: 120),
                reverseTransitionDuration: Duration(milliseconds: 120),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  // Your existing transition if you still want to apply it
                  var scaleTween = Tween<double>(begin: 0.0, end: 1.0)
                      .animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
                  return ScaleTransition(
                    scale: scaleTween,
                    child: child,
                  );
                },
              ));
            },
            ),
          ),









          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
