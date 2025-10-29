import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/cards/skillCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  final int degrees = 1; 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.symmetric(
          vertical: BorderSide(
            color: neuBlack,
            width: neuBorder,
            strokeAlign: BorderSide.strokeAlignOutside
          ),
          horizontal: BorderSide(
            color: neuBlack,
            width: neuBorder,
            strokeAlign: BorderSide.strokeAlignOutside
          )
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(150, 20),
                  child: Container(
                    height: 25, 
                    width: 100,
                    decoration: BoxDecoration(
                      color: orange,
                      // borderRadius: BorderRadius.circular(100),
                      border: BoxBorder.all(
                        color: orange, 
                        width: 2.0,
                      )
                    ),
                  )
                ),
                Text(
                  "Skills",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.archivoBlack(
                    fontSize: 56.0,
                    color: neuBlack,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ],
              ),
            ),
            const SizedBox(height: 20.0),
            Wrap(
              spacing: 50.0, 
              runSpacing: 50.0,
              children: [
                SkillCard(title: 'Languages', color: yellow, skills: [
                      "Python",
                      "C/C++",
                      "Java",
                      "Dart",
                      "JavaScript",
                      "SQL",
                ], rotation: RotationDirection.clockwise,),
                SkillCard(title: "Frameworks & Libraries", color: pink, skills: [
                  "Flutter",
                  "Django",
                  "Next.js",
                  "Yocto Project",
                  "U-Boot",
                  "Coreboot",
                ], rotation: RotationDirection.counterClockwise,),
                SkillCard(title: "Tools & Platforms", color: neonBlue, skills: [
                  "Git",
                  "GitHub",
                  "QEMU",
                  "Linux",
                  "Docker",
                  "Supabase",
                  "Vercel",
                ], rotation: RotationDirection.clockwise,),
              ],
            ),
          const SizedBox(height: 50.0),
        ]
      ),
    );
  }
}