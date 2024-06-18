import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_set_grow/Trainee/Navigation/Messages.dart';
import 'package:skill_set_grow/Trainee/Navigation/Profile.dart';
import 'package:skill_set_grow/Trainee/Navigation/Tasks.dart';





class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  int _selectedIndex2 = 0;


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
    // Add cases for other pages here...
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
    double screenWidth = MediaQuery.of(context).size.width;

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





      body: SingleChildScrollView(
        child: Column(
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



              SizedBox(
                height: 20,
              ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff0DAABC),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 12, right: 12, ),

                  child: Column(
                    children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text( 'How to do\nlearn Jumping\nand how to\nland safely', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 20, color: Colors.white),),

                          const Spacer(
                            flex: 1,
                          ),

                          Image.asset('assets/pictures/Jump.png', height: 150, width: 190,),

                        ],
                      ),




                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Color(0xff2B3445),
                            ),
                            child: SvgPicture.asset('assets/Icons/Play.svg', fit: BoxFit.none,),
                          ),



                          Spacer(
                            flex: 1,
                          ),

                          Container(
                            width: 55,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xff242730).withOpacity(0.9),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child:  Center(child: Text( '7 min', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Colors.white),)),
                          ),
                        ],
                      ),



                    ],


                  ),
                ),
              ),
            ),






            SizedBox(
              height: 20,
            ),




            SizedBox(
              height: 55,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (_, index) {
                    List<String> serviceNames = [
                      'All',
                      'Coding',
                      'Marketing',
                      'Music',
                      'Sketting',

                    ];


                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex2 = index;
                        });
                      },


                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Column(
                          children: [
                            Container(
                              height: 33,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(8)),
                                border: _selectedIndex2 == index ? null : Border
                                    .all(color: Colors.black, width: 1),
                                color: _selectedIndex2 == index
                                    ? Color(0xff2B3445).withOpacity(0.95)
                                    : null, // Purple with 67% opacity
                              ),

                              child: Center(
                                child: Text(
                                  serviceNames[index], // Get text based on index
                                  style: TextStyle(fontFamily: 'Poppins Medium',
                                      fontSize: 14,
                                      color: _selectedIndex2 == index ? Colors
                                          .white : Colors.black),

                                ),
                                //    child: Text('Services', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),






//Container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              height: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff242730),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none, // Allow overflow for the avatar
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Image.asset('assets/pictures/Pic.png', fit: BoxFit.fitWidth),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: -25, // Adjust this value to position the avatar between the image and the container
                        right: 25, // Adjust the horizontal position as needed
                        child: Container(
                          padding: EdgeInsets.all(2.5), // Space between the avatar and the border
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Border color
                          ),
                          child: CircleAvatar(
                            radius: 26, // Avatar size
                            backgroundImage: AssetImage('assets/pictures/Avtar.png'), // Replace with your avatar image
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0), // Adjust top padding to accommodate the avatar
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text( 'Andy William', style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 12,  color: Colors.white.withOpacity(0.7), ), ),
                            SizedBox(width: 5),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: 7),


                        Row(
                          children: [
                            Text('Learn the basics of the Coding in 7 min?', style: TextStyle(fontFamily: 'Poppins Regular',  fontSize: 16,  color: Colors.white, ), ),
                          ],
                        ),

                        SizedBox(height: 3),

                        Row(
                          children: [
                            Text( '53K views', style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white.withOpacity(0.8), ), ),
                            Text( ' . ',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 16,  color: Colors.white, )),
                            Text('2 weeks ago',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white.withOpacity(0.8), ) ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


            SizedBox(
              height: 15,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff242730),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none, // Allow overflow for the avatar
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset('assets/pictures/Pic.png', fit: BoxFit.fitWidth),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: -25, // Adjust this value to position the avatar between the image and the container
                          right: 25, // Adjust the horizontal position as needed
                          child: Container(
                            padding: EdgeInsets.all(2.5), // Space between the avatar and the border
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // Border color
                            ),
                            child: CircleAvatar(
                              radius: 26, // Avatar size
                              backgroundImage: AssetImage('assets/pictures/Avtar.png'), // Replace with your avatar image
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0), // Adjust top padding to accommodate the avatar
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text( 'Andy William', style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 12,  color: Colors.white.withOpacity(0.7), ), ),
                              SizedBox(width: 5),
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ],
                          ),


                          SizedBox(height: 7),


                          Row(
                            children: [
                              Text('Learn the basics of the Coding in 7 min?', style: TextStyle(fontFamily: 'Poppins Regular',  fontSize: 16,  color: Colors.white, ), ),
                            ],
                          ),

                          SizedBox(height: 3),

                          Row(
                            children: [
                              Text( '53K views', style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white.withOpacity(0.8), ), ),
                              Text( ' . ',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 16,  color: Colors.white, )),
                              Text('2 weeks ago',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white.withOpacity(0.8), ) ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),





            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Text('Recommended',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 16,  color: Colors.black, ) ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Image.asset('assets/pictures/Line.png'),
                  ),
                ],
              ),
            ),


            SizedBox(
              height: 10,
            ),





            //Recommended

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Stack(
                  children: [
                    // Image
                    Image.asset(
                      'assets/pictures/Pic2.png', fit: BoxFit.fill,  width: double.infinity,
                    ),
                    // Text
                    Positioned(
                      top: 40.0, // Adjust the position as needed
                      left: 16.0, // Adjust the position as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Learn Play and\nJumping',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 24,  color: Colors.white, ) ),

                          SizedBox(
                            height: 20,
                          ),

                          Text( 'Andy William', style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 14,  color: Colors.white.withOpacity(0.95), ), ),


                          Row(
                            children: [
                              Text( '53K views', style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white, ), ),
                              Text( ' . ',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 16,  color: Colors.white, )),
                              Text('2 weeks ago',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white, ) ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),


                          Container(
                            padding: EdgeInsets.all(2.5), // Space between the avatar and the border
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // Border color
                            ),
                            child: CircleAvatar(
                              radius: 30, // Avatar size
                              backgroundImage: AssetImage('assets/pictures/Avtar.png'), // Replace with your avatar image
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),




            SizedBox(
              height: 15,
            ),




            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Stack(
                  children: [
                    // Image
                    Image.asset(
                      'assets/pictures/Pic2.png', fit: BoxFit.fill,  width: double.infinity,
                    ),
                    // Text
                    Positioned(
                      top: 40.0, // Adjust the position as needed
                      left: 16.0, // Adjust the position as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Learn Play and\nJumping',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 24,  color: Colors.white, ) ),

                          const SizedBox(
                            height: 20,
                          ),

                          Text( 'Andy William', style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 14,  color: Colors.white.withOpacity(0.95), ), ),


                          const Row(
                            children: [
                              Text( '53K views', style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white, ), ),
                              Text( ' . ',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 16,  color: Colors.white, )),
                              Text('2 weeks ago',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Colors.white, ) ),
                            ],
                          ),


                          const SizedBox(
                            height: 20,
                          ),


                          Container(
                            padding: EdgeInsets.all(2.5), // Space between the avatar and the border
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // Border color
                            ),
                            child: CircleAvatar(
                              radius: 30, // Avatar size
                              backgroundImage: AssetImage('assets/pictures/Avtar.png'), // Replace with your avatar image
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),



            const SizedBox(
              height: 5,
            ),








          ],
        ),
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
