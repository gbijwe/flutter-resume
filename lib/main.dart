import 'package:flutter/material.dart';
import 'package:flutter_resume/sections/aboutMe.dart';
import 'package:flutter_resume/sections/contact.dart';
import 'package:flutter_resume/sections/projects.dart';
import 'package:flutter_resume/sections/skills.dart';
import 'package:flutter_resume/widgets/layout/myNavBar.dart';
import 'package:flutter_resume/sections/hero.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

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
              MyNavBar(),
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
