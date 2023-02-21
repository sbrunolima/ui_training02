import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Widget
import '../widgets/planet_container_widget.dart';
import '../widgets/cassini_banner_widget.dart';
import '../widgets/my_buttom_widget.dart';

class PlanetsScreen extends StatefulWidget {
  static const routeName = 'planets-screen';
  @override
  State<PlanetsScreen> createState() => _PanetsScreenState();
}

class _PanetsScreenState extends State<PlanetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/profile.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Feed',
            style: GoogleFonts.openSans(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.grid_view_rounded),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 26),
            Container(
              height: 44,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  MyButtomWidget('All', 60, false),
                  MyButtomWidget('Planets', 100, true),
                  MyButtomWidget('Coments', 100, false),
                  MyButtomWidget('Solar system', 150, false),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlanetContainerWidget(
                  'assets/mars.png',
                  'Mars',
                  '270 views',
                ),
                PlanetContainerWidget(
                  'assets/TrES-2b.png',
                  'TrES-2b',
                  '176 views',
                ),
              ],
            ),
            const SizedBox(height: 10),
            CassiniBannerWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlanetContainerWidget(
                  'assets/55CancriE.png',
                  '55 Cancri e ',
                  '170 views',
                ),
                PlanetContainerWidget(
                  'assets/CoRoT7b.png',
                  'CoRoT 7b',
                  '376 views',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlanetContainerWidget(
                  'assets/Kepler-22b.png',
                  'Kepler-22b',
                  '300 views',
                ),
                PlanetContainerWidget(
                  'assets/CoRoT7b.png',
                  'CoRoT 7b',
                  '376 views',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Column(
          children: [
            const SizedBox(height: 10),
            BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.indigo,
              currentIndex: 0,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(
                    EneftyIcons.home_2_bold,
                    size: 30,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: const Icon(
                        EneftyIcons.add_outline,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  label: '',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    EneftyIcons.search_normal_2_bold,
                    color: Colors.grey,
                    size: 30,
                  ),
                  label: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
