import 'package:flutter/material.dart';
import 'package:flutter_resume/colors.dart';
import 'package:flutter_resume/widgets/layout/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileNavBar extends StatelessWidget {
  MobileNavBar({required this.heroKey, required this.aboutKey, required this.skillsKey, required this.projectsKey, required this.contactKey, super.key});

  final GlobalKey heroKey;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  final List<PopupMenuEntry<String>> dropdownItems = [
    PopupMenuItem<String>(
      value: 'about',
      child: Text(
        'About',
        style: GoogleFonts.sora(
          fontSize: 16.0,
          color: black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PopupMenuItem<String>(
      value: 'projects',
      child: Text(
        'Projects',
        style: GoogleFonts.sora(
          fontSize: 16.0,
          color: black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PopupMenuItem<String>(
      value: 'skills',
      child: Text(
        'Skills',
        style: GoogleFonts.sora(
          fontSize: 16.0,
          color: black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PopupMenuItem<String>(
      value: 'contact',
      child: Text(
        'Contact',
        style: GoogleFonts.sora(
          fontSize: 16.0,
          color: black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  void _handleMenuSelection(String value) {
    GlobalKey? targetKey; 

    switch (value) {
      case 'about':
        targetKey = aboutKey;
        break;
      case 'projects':
        targetKey = projectsKey;
        break;
      case 'skills':
        targetKey = skillsKey;
        break;
      case 'contact':
        targetKey = contactKey;
        break;
    }

    if (targetKey != null && targetKey.currentContext != null) {
      Scrollable.ensureVisible(
        targetKey.currentContext!,
        duration: const Duration(milliseconds: 500),
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
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: black.withAlpha(50),
          ),
        ],
      ),
      child: NeuAppBar(
        title: 'Gaurav Bijwe',
        borderRadius: 0.0,
        offset: Offset(0, 0),
        fontSize: 24.0,
        actions: [
          Container(
            decoration: BoxDecoration(
              color: white,
              border: BoxBorder.all(
                color: black, 
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: black, 
                  offset: Offset(3, 3)
                )
              ],
            ),
            child: PopupMenuButton<String>(
              icon: Icon(Icons.menu, color: black),
              onSelected: _handleMenuSelection,
              itemBuilder: (BuildContext context) => dropdownItems,
              color: white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: black, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}