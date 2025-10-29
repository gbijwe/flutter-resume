import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class Footer extends StatelessWidget {
  const Footer({required this.title, this.fontSize, super.key});  

  final double degrees = 2;
  final String title; 
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -degrees * Math.pi / 180,
      child: Container(
        decoration: BoxDecoration(
          color: neuBlack,
          border: BoxBorder.all(color: neuBlack, width: neuBorder),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            title,
            style: GoogleFonts.sora(
              textStyle: TextStyle(
                color: white,
                fontSize: fontSize ?? 8.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
