import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final int degrees = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: neonBlue,
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
          const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(20, -20),
                  child: Container(
                    height: 30, 
                    width: 30,
                    decoration: BoxDecoration(
                      color: orange,
                      border: BoxBorder.all(
                        color: neuBlack, 
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  )
                ),
                Text(
                  "About Me",
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
            const SizedBox(height: 50.0),
            Transform.rotate(
              angle: -degrees * Math.pi / 180,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: NeuContainer(
                  color: white,
                  width: 0.75 * MediaQuery.of(context).size.width,
                  borderColor: black,
                  shadowColor: black,
                  offset: Offset(8,8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                    child: Text(
                      "Innovative and results-oriented Computer Science student with a passion for the full product lifecycle, from ideation to deployment. \n\nExperienced in full-stack development, embedded systems, and project management through impactful internships and award-winning hackathon projects. Seeking to leverage skills in software engineering and team leadership to contribute to a challenging and growth-oriented role. \n\nI thrive in collaborative environments where I can apply my technical knowledge to solve real-world problems. \n\n\nLet's create something amazing together!",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.publicSans(
                        fontSize: 22.0,
                        color: neuBlack,
                        fontWeight: FontWeight.w600
                      ),
                          ),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 80.0),
        ]
      ),
    );
  }
}