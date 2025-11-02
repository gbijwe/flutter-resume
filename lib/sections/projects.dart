import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/animations/tiltAnimation.dart';
import 'package:flutter_resume/widgets/cards/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  final int degrees = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: orange,
        border: Border.symmetric(
          vertical: BorderSide(
            color: black,
            width: neuBorder,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          horizontal: BorderSide(
            color: black,
            width: neuBorder,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: white,
                        border: BoxBorder.all(color: black, width: 2.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Projects",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.archivoBlack(
                            fontSize: 48.0,
                            color: black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -30),
                      child: Transform.rotate(
                        angle: 15 * Math.pi / 180,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: pink,
                            border: BoxBorder.all(color: black, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 80.0),
          Wrap(
            spacing: 50.0,
            runSpacing: 50.0,
            children: [
              TiltedAnimationWidget(
                tiltAngle: -degrees * Math.pi / 180,
                child: ProjectCard(color: green, title: "PrintHub", description: "Engineered a plug-and-play IoT device and a cross-platform Flutter application to convert standard printers into self-service kiosks. Managed end-to-end product development and client relations.", techStack: ["Flutter", "IoT", "Supabase"], websiteLink: "https://www.printhubco.in",),
              ),
              TiltedAnimationWidget(
                tiltAngle: degrees * Math.pi / 180,
                child: ProjectCard(color: neonBlue, title: "Presently", description: "Developed a modular Flutter application to automate hostel attendance using Computer Vision (CV), Bluetooth Low Energy (BLE) for mass check-ins, and geolocation services for field tracking.", techStack: ["Flutter", "Computer Vision", "BLE", "Geolocation"],)),
              TiltedAnimationWidget(
                tiltAngle: -degrees * Math.pi / 180,
                child: ProjectCard(color: yellow, title: "SalesPath", description: "Built a full-stack sales team management application using Flutter and Next.js, featuring background geolocation tracking, task verification, and administrative controls. Winner of GP Enkryptia Hackathon 2024.", techStack: ["Flutter", "Next.js", "Geolocation"],)),
            ],
          ),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
