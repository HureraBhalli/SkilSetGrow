import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skill_set_grow/Components/MyButton.dart';
import 'package:skill_set_grow/OnBoarding/Boarding-II.dart';





class Boarding1 extends StatelessWidget {
  static const String id = 'Boarding1';
  const Boarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(flex: 2),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Find a new place to ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 22)),
              Text('Work', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 22, color: Color(0xffCC5600))),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Learn about your favorite fields and topics. Book video \n call with few click and quick video buy',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.black),
              ),
            ],
          ),


          const Spacer(flex: 3),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/pictures/Board1.png'),
            ],
          ),
          const Spacer(flex: 4),







          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: MyButton(title: 'Next', onpress: ()  {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => Boarding2(),
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
