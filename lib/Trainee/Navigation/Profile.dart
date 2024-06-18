import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_set_grow/Trainee/Navigation/Home.dart';
import 'package:skill_set_grow/Trainee/Navigation/Tasks.dart';
import 'package:skill_set_grow/Trainee/Navigation/Messages.dart';








class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {




  int _selectedIndex = 3;


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
    return Scaffold(





      backgroundColor: Color(0xffF6F6F6),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [

            SizedBox(
              height: 80,
            ),

            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12), // Makes the border radius 0 to get a rectangle
                  child: Image.asset(
                    'assets/pictures/Avtar.png', // Replace with your avatar image
                    width: 76, // Set the width of the rectangle (2 * radius of circle)
                    height: 76, // Set the height of the rectangle (2 * radius of circle)
                    fit: BoxFit.cover, // Ensures the image covers the entire container
                  ),
                ),


                const SizedBox(
                  width: 15,
                ),


                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'David Clark',
                      style:
                      TextStyle(fontFamily: 'Poppins Bold', fontSize: 22),
                    ),

                    Text(
                      'davidclark@gmail.com',
                      style:
                      TextStyle(fontFamily: 'Poppins Regular', fontSize: 14),
                    ),


                    Text(
                      'United Kingdom',
                      style:
                      TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14),
                    ),


                  ],
                ),


                Spacer(flex: 1,),
                SvgPicture.asset('assets/Icons/Next.svg'),

              ],
            ),



            SizedBox(
              height: 25 ,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'More to discover',
                style:
                TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),
              ),
            ),


            SizedBox(
              height: 15,
            ),



            //Own Videos
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/Icons/OwnVideos.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text('Own videos', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff1D1D1D),)),

                  ],
                ),
              ),
            ),




            SizedBox(
              height: 12,
            ),


            //Training Company

            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/Icons/TrainingCompany.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text('Training company', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff1D1D1D),)),

                  ],
                ),
              ),
            ),


            
            
            SizedBox(
              height: 12,
            ),


            //Spending History

            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/Icons/SpedningHistory.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text('Spending history', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff1D1D1D),)),

                  ],
                ),
              ),
            ),








            SizedBox(
              height: 12,
            ),


            //Spending History

            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/Icons/Setting.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text('Settings', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff1D1D1D),)),

                  ],
                ),
              ),
            ),






            SizedBox(
              height: 12,
            ),


            //Spending History

            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/Icons/Support.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text('Support tickets', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff1D1D1D),)),

                  ],
                ),
              ),
            ),







            SizedBox(
              height: 12,
            ),


            //Spending History

            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/Icons/AccSetings.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text('Support tickets', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff1D1D1D),)),

                  ],
                ),
              ),
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
