import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_resume/sections/footer.dart';
import 'package:flutter_resume/widgets/buttons/contactMeButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  final int degrees = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: pink,
        border: Border.symmetric(
          vertical: BorderSide(
            color: neuBlack,
            width: neuBorder,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          horizontal: BorderSide(
            color: neuBlack,
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
                  alignment: Alignment.bottomCenter,
                  children: [
                    Transform.translate(
                      offset: Offset(0, -20),
                      child: Transform.rotate(
                        angle: 0.02,
                        child: Container(
                          height: 20,
                          width: 380,
                          decoration: BoxDecoration(
                            color: green,
                            border: BoxBorder.all(color: Colors.transparent, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Let's Connect",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.archivoBlack(
                            fontSize: 48.0,
                            color: neuBlack,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0),
          Wrap(
            spacing: 50.0,
            runSpacing: 50.0,
            children: [
              Transform.rotate(
                angle: -degrees * Math.pi / 1440,
                child: ContactMeButton(
                  title: "LinkedIn",
                  link: "https://www.linkedin.com/in/gbijwe", 
                  description: "Connect with me professionally",
                  icon: Icon(Icons.contacts, size: 24, color: white), 
                ),
              ),
              Transform.rotate(
                angle: degrees * Math.pi / 1440,
                child: ContactMeButton(
                  title: "GitHub",
                  link: "https://github.com/gbijwe",
                  description: "Check out my repos",
                  icon: Icon(Icons.contacts, size: 24, color: white), 

                ),
              ),
              Transform.rotate(
                angle: -degrees * Math.pi / 1440,
                child: ContactMeButton(
                  title: "Email", 
                  link: "mailto:gabjwe@gmail.com",
                  description: "gabijwe@gmail.com",
                  icon: Icon(Icons.contacts, size: 24, color: white), 
                ),
              ),
            ],
          ),
          const SizedBox(height: 100.0),
          Footer(
            title: "© 2025 Gaurav Bijwe",
            fontSize: 16.0,
          ),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}