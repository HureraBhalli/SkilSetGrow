import 'package:flutter/material.dart';
import 'package:skill_set_grow/Components/MyButton.dart';



class SignUp1 extends StatelessWidget {
  static const String id = 'SignUp1';
  const SignUp1({super.key});

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



                        const Text('Hey, ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18)),

                        const SizedBox(
                          height: 10,
                        ),


                        Text('Enter your infromation to create an account to use SkillSetGrow.', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.black),),


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
                               child: SvgPicture.asset('assets/Icons/Username.svg'),
                               // child: Image.asset('assets/Icons/Username.svg', width: 24, height: 24,),
                              ),
                              labelText: 'Upload vehicle photos',
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




                        // Button 2
                        Container(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: Color(0xffEBF2FA),
                              elevation: 0,
                              side: BorderSide(width: 1, color: Color(0xff000000).withOpacity(0.3)),
                            ),
                            child:  const Text( 'Already have an account', style: TextStyle( fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.black,),),
                          ),
                        ),




                        SizedBox(height: 10),

                        // Button 3


                        MyButton(title: 'Sign Up', onpress: () {}),
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



