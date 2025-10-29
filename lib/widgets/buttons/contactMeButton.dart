import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

import 'package:url_launcher/url_launcher.dart'; 

Future<void> launch(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }


class ContactMeButton extends StatelessWidget {
  const ContactMeButton({required this.icon, required this.title, required this.link, this.description, super.key});
  final Icon icon; 
  final String title; 
  final String link; 
  final String? description;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(link));
      },
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          color: white,
          border: BoxBorder.all(color: neuBlack, width: 3.0),
          boxShadow: [
            BoxShadow(
              color: neuBlack, 
              offset: Offset(5, 5), 
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: neuBlack,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: icon,
                  )),
              ),
              Text(title, style: GoogleFonts.archivoBlack(
                fontSize: 32.0, 
                fontWeight: FontWeight.bold
              )),
              Text(description ?? "Let's connect", style: GoogleFonts.archivoBlack(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ))
          ],),
        ),
      ),
    );
  }
}