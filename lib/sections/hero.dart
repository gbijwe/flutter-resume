import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/buttons/textButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launch(String url, {bool isNewTab = true}) async {
  await launchUrl(
    Uri.parse(url),
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  );
}

void _scrollToContact(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!, 
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeOut
  );
}


class TestHero extends StatelessWidget {
  const TestHero({required this.contactKey, super.key});
  final GlobalKey contactKey; 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Column(
        children: [
          const SizedBox(height: 50.0,),
          Transform.translate(
            offset: Offset(-240, 35),
            child: Container(
              height: 60, 
              width: 60,
              decoration: BoxDecoration(
                color: green,
                border: BoxBorder.all(
                  color: black, 
                  width: 2.0,
                )
              ),
            ),
          ),
          
          Wrap(
            children: [
              Text(
                "Hi, I'm",
                textAlign: TextAlign.left,
                style: GoogleFonts.archivoBlack(
                  fontSize: 84.0,
                  color: black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                " Gaurav ",
                textAlign: TextAlign.left,
                style: GoogleFonts.archivoBlack(
                  fontSize: 84.0,
                  color: black,
                  backgroundColor: yellow,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                border: BoxBorder.fromLTRB(
                  left: BorderSide(width: 5.0, color: black)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Computer Science student \nspecializing in mobile app development, \nembedded systems, and IoT solutions.', style: GoogleFonts.archivoBlack(
                  fontSize: 28.0, 
                  fontWeight: FontWeight.w400,
                  color: black,
                ),),
              ),
            ),
          ),
          const SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              MyTextButton(title: "Contact Me", onPressed: () => _scrollToContact(contactKey), color: yellow, textColor: black, shadowColor: black, fontsize: 18, trailing: Icon(Icons.arrow_outward, color: black, size: 24, weight: 50.0,),),
              const SizedBox(width: 16.0),
              MyTextButton(title: "Download Resume", onPressed: () => launch("https://gb.is-a.dev/static/media/gaurav_bijwe_aug_2025.ac9404793c3b4cc97a75.pdf"), color: white, textColor: black, shadowColor: black, fontsize: 18,),
           ] 
          ),
          const SizedBox(height: 100.0,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Flexible(
          //       flex: 1, 
          //       child: Text('')
          //     ),
          //     Flexible(
          //       flex: 2,
          //       fit: FlexFit.loose,
          //       child: Wrap(
          //         children: [
          //           Text(
          //             "Hi, I'm",
          //             textAlign: TextAlign.left,
          //             style: GoogleFonts.archivoBlack(
          //               fontSize: 64.0,
          //               color: black,
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //           Text(
          //             " Gaurav ",
          //             textAlign: TextAlign.left,
          //             style: GoogleFonts.archivoBlack(
          //               fontSize: 56.0,
          //               color: black,
          //               backgroundColor: yellow,
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //         ],
          //       )
          //     ),
          //     Flexible(
          //       flex: 1, 
          //       child: Text('')
          //     ),
          //   ],
          // ),
        ],
      )
    );
  }
}
