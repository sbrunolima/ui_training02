import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtomWidget extends StatelessWidget {
  final String title;
  final double buttonSize;
  bool isSelected;

  MyButtomWidget(this.title, this.buttonSize, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        width: buttonSize,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.black,
          border: Border.all(color: Colors.white24),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 18,
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
