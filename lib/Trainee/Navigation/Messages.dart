import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_set_grow/Trainee/Navigation/Home.dart';
import 'package:skill_set_grow/Trainee/Navigation/Profile.dart';
import 'package:skill_set_grow/Trainee/Navigation/Tasks.dart';


class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  int _selectedIndex = 1;


  void _onItemTapped(int index) {
    switch (index)
    {
      case 0:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Home(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Messages(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Tasks(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;

    // Third case or statement is here...
      case 3:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Profile(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
    }


    _selectedIndex = index;
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,


      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          child: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                children: [
                  Text(
                    'Hey, Pretam',
                    style:
                    TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18),
                  ),
                ],
              ),
            ),

            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 0,
                      color: Color(0xff6763EE),
                    ),
                  ),
                  child: GestureDetector(

                    onTap: ()
                    {
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => Profile(),
                        transitionDuration: Duration(milliseconds:120),
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



                    child: const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/pictures/Avtar.png'),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),






      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset('assets/Icons/Search.svg'),
              const SizedBox(
                width: 12,
              ),

              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                        color: Color(0xff2B3445)),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                      fontFamily: 'Poppins Semibold',
                      fontSize: 14,
                      color: Color(0xff2B3445)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: SvgPicture.asset('assets/Icons/Filter.svg'),
              ),
            ],
          ),
        ),
      ),


          const SizedBox(
            height: 30,
          ),





          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),


            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30, // Avatar size
                  backgroundImage: AssetImage('assets/pictures/Avtar.png'), // Replace with your avatar image
                ),

              const SizedBox(
                width: 15,
              ),



              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        'Hey, Pretam',
                        style:
                        TextStyle(fontFamily: 'Poppins Medium', fontSize: 16),
                      ),

                      Text(
                        '12:30pm',
                        style:
                        TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),
                      ),

                    ],
                  ),


                  const SizedBox(
                    height: 3,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      const Text(
                        'Hey, I am here for your help...',
                        style:
                        TextStyle(fontFamily: 'Poppins Regular', fontSize: 14),
                      ),



                      Container(
                        width: 25,
                        height: 25 ,
                        decoration: BoxDecoration(
                          color: Color(0xff2B3445),
                          shape: BoxShape.circle,
                        ),

                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                ],
              ),






              ],
            ),
          )



        ],
      ),























      //Navigation

      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                height: 106, // Adjusted height
                // color: Color(0xff6763EE).withOpacity(0.9),

                child: BottomNavigationBar(
                  backgroundColor:
                  Color(0xf2B3445).withOpacity(0.9), // Set to transparent
                  // backgroundColor: Color(0xff6763EE).withAlpha(100),

                  //backgroundColor: Colors.green,
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/Icons/Home.svg',
                        color: _selectedIndex == 0
                            ? Color(0xff4E97FD)
                            : Color(0xffFFFFFF).withOpacity(0.7),
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/Icons/Messages.svg',
                        color: _selectedIndex == 1
                            ? Color(0xff4E97FD)
                            : Color(0xffFFFFFF).withOpacity(0.7),
                      ),
                      label: 'Messages',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/Icons/Tasks.svg',
                        color: _selectedIndex == 2
                            ? Color(0xff4E97FD)
                            : Color(0xffFFFFFF).withOpacity(0.7),
                      ),
                      label: 'Tasks',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/Icons/Profile.svg',
                        color: _selectedIndex == 3
                            ? Color(0xff4E97FD)
                            : Color(0xffFFFFFF).withOpacity(0.7),
                      ),
                      label: 'Profile',
                    ),
                  ],
                  selectedLabelStyle: TextStyle(
                      fontFamily: 'Poppins Semibold',
                      fontSize: 12,
                      color: Color(0xffFFFFFF)),
                  unselectedLabelStyle: TextStyle(
                      fontFamily: 'Poppins Regular',
                      fontSize: 12,
                      color: Color(0xffFFFFFF)),
                  unselectedItemColor: Color(0xffFFFFFF).withOpacity(0.7),
                  unselectedIconTheme:
                  IconThemeData(color: Color(0xffFFFFFF).withOpacity(0.2)),
                  selectedItemColor: Color(0xffFFFFFF),
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 13, // Adjust this value to position the dot properly
            left: MediaQuery.of(context).size.width / 8 +
                _selectedIndex * (MediaQuery.of(context).size.width / 4) -
                4, // Adjust this value to position the dot properly
            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Change this to the color you want for the dot
              ),
            ),
          ),
        ],
      ),






    );
  }
}
