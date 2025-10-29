import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

enum RotationDirection { clockwise, counterClockwise }

class SkillCard extends StatelessWidget {
  const SkillCard({required this.title, this.skills, this.color, this.rotation = RotationDirection.clockwise, super.key});
  
  final String title; 
  final List<String>? skills; 
  final Color? color; 
  final int degrees = 1;
  final RotationDirection rotation;
   

  @override
  Widget build(BuildContext context) {
    final double angle = (rotation == RotationDirection.clockwise) ? degrees * Math.pi / 180 : -degrees * Math.pi / 180;

    return Transform.rotate(
      angle: angle,
      child: NeuCard(
        offset: Offset(5, 5),
        cardWidth: 360, 
        cardColor: color ?? yellow,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [                 
              Text(
                title,
                style: GoogleFonts.archivoBlack(
                  fontSize: 24.0,
                  color: neuBlack,
                  fontWeight: FontWeight.w900
                )
              ),
              SizedBox(height: 20.0),
              for (String skill in skills ?? []) ...[
                Text(
                  "→$skill",
                  style: GoogleFonts.publicSans(
                    fontSize: 20.0,
                    color: neuBlack,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}