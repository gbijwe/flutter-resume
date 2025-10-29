import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';

class SkillTag extends StatelessWidget {
  const SkillTag({required this.text, this.color, super.key});

  final String text;
  final Color? color; 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? white, 
        border: BoxBorder.all(color: black, width: 2.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
        child: Text(
          text,
          style: GoogleFonts.archivoBlack(
            fontSize: 14.0,
          )
        ),
      ),
    );
  }
}