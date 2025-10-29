import 'package:flutter/material.dart';
import 'package:flutter_resume/colors.dart';
import 'package:flutter_resume/sections/aboutMe.dart';
import 'package:flutter_resume/sections/contact.dart';
import 'package:flutter_resume/sections/projects.dart';
import 'package:flutter_resume/sections/skills.dart';
import 'package:flutter_resume/widgets/layout/myNavBar.dart';
import 'package:flutter_resume/sections/hero.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >= 650) {
                  return MyNavBar();
                } else {
                  // return mobileNavbar;
                  return SizedBox.shrink();
                }
              }),
              TestHero(),
              AboutMe(),
              MySkills(),
              MyProjects(),
              ContactMe(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
