import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_resume/sections/footer.dart';
import 'package:flutter_resume/widgets/animations/tiltAnimation.dart';
import 'package:flutter_resume/widgets/buttons/animatedContactMeButton.dart';
import 'package:flutter_resume/widgets/buttons/contactMeButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> with TickerProviderStateMixin {
  late AnimationController _colorController;
  late AnimationController _angleController;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _tiltAnimation;

  @override
  void initState() {
    super.initState();
    _colorController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _angleController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: white,
      end: green,
    ).animate(_colorController);
    _tiltAnimation = Tween<double>(
      begin: 0,
      end: -1,
    ).animate(_angleController);
  }

  @override
  void dispose() {
    _colorController.dispose();
    super.dispose();
  }

  void _handleHover(bool isHovered) {
    if (isHovered) {
      _colorController.forward();
      _angleController.forward();
    } else {
      _colorController.reverse();
      _angleController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final int degrees = 1;
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
                            border: BoxBorder.all(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
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
              AnimatedContactMeButton(title: "LinkedIn", link: "https://www.linkedin.com/in/gbijwe", description: "Connect with me", iconData: Bootstrap.linkedin, tiltAngle: -1 * Math.pi / 180,),
              AnimatedContactMeButton(title: "Github", link: "https://github.com/gbijwe", description: "Check out my repos", iconData: Bootstrap.github, tiltAngle: -1 * Math.pi / 180,),
              AnimatedContactMeButton(title: "Email", link: "mailto:gabijwe@gmail.com", description: "gabijwe@gmail.com", iconData: AntDesign.mail_fill, tiltAngle: -1 * Math.pi / 180,),
            ],
          ),
          const SizedBox(height: 100.0),
          Footer(title: "© 2025 Gaurav Bijwe", fontSize: 16.0),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
