import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

//Screens
import '../screens/planets_screens.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/03.jpg',
            height: mediaQuery.height,
            width: mediaQuery.width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/earth01.png',
            width: 500,
            height: 500,
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              width: mediaQuery.width,
              height: 380,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: Center(
                      child: Text(
                        'Explore the universe!',
                        style: GoogleFonts.openSans(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 300,
                    child: Center(
                      child: Text(
                        'Learn more about the \nuniverse where we all live.',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    child: Stack(
                      children: [
                        RotatedBox(
                          quarterTurns: 2,
                          child: CircularPercentIndicator(
                            radius: 45,
                            percent: 0.30,
                            backgroundColor: Colors.transparent,
                            progressColor: Colors.indigo,
                            circularStrokeCap: CircularStrokeCap.round,
                            lineWidth: 3,
                            reverse: false,
                            center: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 70,
                                height: 70,
                                color: Colors.white,
                                child: RotationTransition(
                                  turns: const AlwaysStoppedAnimation(60 / 360),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(PlanetsScreen.routeName);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
