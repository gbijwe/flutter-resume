import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/buttons/button.dart';
import 'package:flutter_resume/widgets/tags/skillTag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launch(String url, {bool isNewTab = true}) async {
  await launchUrl(
    Uri.parse(url),
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  );
}


class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.title, this.description, this.color, this.techStack, this.sourceLink, this.websiteLink, super.key});

  final String title; 
  final String? description; 
  final Color? color; 
  final List<String>? techStack; 
  final String? websiteLink;
  final String? sourceLink;

  @override
  Widget build(BuildContext context) {
    return NeuCard(
      cardColor: color ?? yellow,
      offset: Offset(5, 5),
      cardWidth: 360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image / Placeholder
          Container(
            decoration: BoxDecoration(
              color: color?.withValues(alpha: 60) ?? yellow.withAlpha(60),
              border: BoxBorder.fromLTRB(
                bottom: BorderSide(color: neuBlack, width: 3.0)
              )
            ),
            height: 200, 
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: 0.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: BoxBorder.all(color: neuBlack, width: 3.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                    child: Text("01", textAlign: TextAlign.center, style: GoogleFonts.archivoBlack(
                      fontSize: 32.0, 
                      fontWeight: FontWeight.w900
                    )),
                  ))))
          ),
      
          // title and project description
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 16.0, right: 16.0, bottom: 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: BoxBorder.fromLTRB(bottom: BorderSide(color: neuBlack, width: 3.0))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 4.0, right: 10.0),
                  child: Text(title, style: GoogleFonts.archivoBlack(
                    fontSize: 24.0, 
                    color: neuBlack,
                    fontWeight: FontWeight.w900
                  )),
                )
              ),
              // description
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Text(description ?? "This is my project description. Here is what is does, how it works, and what my contribution was. ", style: GoogleFonts.archivo(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700
                ),),
              ),
              // Add the tech stack tags here
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Wrap(
                  spacing: 10.0, 
                  runSpacing: 5.0,
                  children: [
                    for (var tech in techStack ?? []) ...[
                      SkillTag(text: tech)
                    ],
                  ]
                ),
              ),
              // Add the link buttons here
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 5.0,
                  children: [
                    if (websiteLink != null) MyButton(title: "View", onPressed:() => launch(websiteLink ?? ""),),
                    if (sourceLink != null) MyButton(title: "Source code", color: neuBlack, textColor: white, shadowColor: white, onPressed: () => launch(sourceLink ?? ""),),
                  ]
                ),
              ),
            ]
          )
        ]
      )
    );
  }
}