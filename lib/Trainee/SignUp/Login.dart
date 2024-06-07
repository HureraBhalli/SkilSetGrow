import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_set_grow/Components/MyButton.dart';





class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                flex: 2,
              ),






              // Adjust the height to match the image height
              Expanded(
                flex: 1,
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



                        const Text('LogIn', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18)),

                        const SizedBox(
                          height: 10,
                        ),


                        Text('You can log in your account by entering your account infromation  ', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.black),),


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
                                child: SvgPicture.asset('assets/Icons/Email.svg'),
                                // child: Image.asset('assets/Icons/Username.svg', width: 24, height: 24,),
                              ),
                              labelText: 'Enter your email',
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
                                child: SvgPicture.asset('assets/Icons/Password.svg'),
                                // child: Image.asset('assets/Icons/Username.svg', width: 24, height: 24,),
                              ),
                              labelText: 'Enter your password',
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 14,
                                  color: Color(0xff000200).withOpacity(0.7)),
                            ),
                          ),
                        ),

                        Spacer(flex: 2),


                        // Button 1
                        MyButton(title: 'Sign Up', onpress: () {}),


                        Spacer(flex: 4),
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



