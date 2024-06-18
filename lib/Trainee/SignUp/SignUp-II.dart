import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_set_grow/Components/MyButton.dart';
import 'package:skill_set_grow/Trainee/Navigation/Home.dart';



class SignUp2 extends StatefulWidget {
  static const String id = 'SignUp2';

  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffB9C8ED), Color(0xffF0B8C6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),




          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/pictures/Board4.png',
            ),
          ),
          // Container overlapping the image
          Column(
            children: [
              const Spacer(
                flex: 1,
              ),






              // Adjust the height to match the image height
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity, // Expand width to full screen width
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),




                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),



                        const Text('Personal Information', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18)),

                        const SizedBox(
                          height: 10,
                        ),


                        Text('Enter your personal infromation to create useable account.', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.black),),


                        const SizedBox(
                          height: 35,
                        ),




                        Center
                          (child: Container(
                            width: 120.0, // Adjust the width to match the desired size of the CircleAvatar
                            height: 120.0, // Adjust the height to match the desired size of the CircleAvatar
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black, // The color of the border
                                width: 2.0, // The width of the border
                              ),
                            ),
                            child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/pictures/Avtar.png'),
                          //  radius: 80.0,
                            ),
                          ),
                        ),


                        const SizedBox(
                          height: 10,
                        ),

                        Center(
                            child: Text('Upload profile picture', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.black),)),


                        const SizedBox(
                          height: 35,
                        ),








                        Container(
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: BorderSide(color: Color(0xff000200).withOpacity(0.5), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder( // This is the border style when the TextField is focused
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: BorderSide(color: Color(0xff999A99), width: 1.6), // This will be a thicker border than `enabledBorder` and not translucent
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 18.0, right: 12),
                                child: SvgPicture.asset('assets/Icons/Call.svg'),
                                // child: Image.asset('assets/Icons/Username.svg', width: 24, height: 24,),
                              ),
                              labelText: 'Enter phone number',
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 14,
                                  color: Color(0xff000200).withOpacity(0.7)),
                            ),
                          ),
                        ),


                        const SizedBox(
                            height: 10
                        ),





                        Spacer(flex: 3),


                        // Button 1
                        MyButton(title: 'Sign Up', onpress: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => Home(),
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
                        }),


                        Spacer(flex: 1),
                      ],
                    ),
                  ),





                ),
              ),


            ],
          ),




        ],
      ),
    );
  }
}
