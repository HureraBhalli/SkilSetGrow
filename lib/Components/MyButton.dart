
import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  // const MyButton({super.key, required String title});
  final String title;
  // final Color color;
  final VoidCallback onpress;

  MyButton({
    super.key,
    required this.title,
    // this.color = const Color(0xff6763EE),
    required this.onpress,
  }) {}


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2B3445).withOpacity(0.9), // Red with 67% opacity
              Color(0xff2B3445).withOpacity(1), // Blue with 67% opacity
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

          borderRadius: BorderRadius.circular(20),
          // color: color,
        ),
        child: Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 16, color: Colors.white),)),
      ),
    );
  }
}

