import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/layout/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({required this.heroKey, required this.aboutKey, required this.skillsKey, required this.projectsKey, required this.contactKey, super.key});

  final GlobalKey heroKey;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  void _scrollToSection(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!, 
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(
            color: black,
            width: 3,
            // strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: black.withAlpha(50),
          ),
        ]
      ),
      child: NeuAppBar(
        title: 'Gaurav Bijwe',
        borderRadius: 0.0,
        offset: Offset(0, 0),
        fontSize: 24.0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: () => _scrollToSection(aboutKey),
              child: Text('About', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: () => _scrollToSection(projectsKey),
               child: Text('Projects', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: () => _scrollToSection(skillsKey),
              child: Text('Skills', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: () => _scrollToSection(contactKey),
              child: Text('Contact', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}