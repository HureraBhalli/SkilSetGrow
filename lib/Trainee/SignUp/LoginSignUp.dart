import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skill_set_grow/OnBoarding/Boarding-IV.dart';
import 'package:skill_set_grow/Trainee/SignUp/SignUp-I.dart';




class LoginSignUp extends StatelessWidget {
  static const String id = 'LoginSignUp';
  const LoginSignUp({super.key});

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
                flex: 1,
                child: Container(
                  width: double.infinity, // Expand width to full screen width
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.only(
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

                        Image.asset('assets/pictures/Logo1.png'),

                        const SizedBox(
                          height: 20,
                        ),

                        const Text('Get started', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 18)),

                        const SizedBox(
                          height: 10,
                        ),


                        Text('For the access of the proper feature and functionalities\napplication you have to sign in or sign up to \nyour account. ', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.black),),


                        const SizedBox(
                          height: 35,
                        ),


                        // Button 1
                        Container(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: ()  {
                              Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => SignUp1(),
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





                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: Color(0xff2B3445),
                              elevation: 0,
                            ),
                            child:  Text( 'Create new account', style: TextStyle( fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white,),),
                          ),
                        ),


                        const SizedBox(height: 10),

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
