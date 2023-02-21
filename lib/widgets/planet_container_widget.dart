import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanetContainerWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  PlanetContainerWidget(this.image, this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      child: Container(
        height: 210,
        width: 180,
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                height: 150,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 35),
                    Text(
                      title,
                      style: GoogleFonts.lato(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          subtitle,
                          style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset(
                image,
                height: 120,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
