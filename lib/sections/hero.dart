import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/buttons/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launch(String url, {bool isNewTab = true}) async {
  await launchUrl(
    Uri.parse(url),
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  );
}


class TestHero extends StatelessWidget {
  const TestHero({super.key});

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
                  color: neuBlack, 
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
                  color: neuBlack,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                " Gaurav ",
                textAlign: TextAlign.left,
                style: GoogleFonts.archivoBlack(
                  fontSize: 84.0,
                  color: neuBlack,
                  backgroundColor: yellow,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0,),
          Container(
            decoration: BoxDecoration(
              border: BoxBorder.fromLTRB(
                left: BorderSide(width: 5.0, color: neuBlack)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Computer Science student \nspecializing in mobile app development, \nembedded systems, and IoT solutions.', style: GoogleFonts.archivoBlack(
                fontSize: 28.0, 
                fontWeight: FontWeight.w400,
                color: neuBlack,
              ),),
            ),
          ),
          const SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              MyButton(title: "Download Resume", onPressed: () => launch("https://gb.is-a.dev/static/media/gaurav_bijwe_aug_2025.ac9404793c3b4cc97a75.pdf"), color: yellow, textColor: neuBlack, shadowColor: neuBlack, fontsize: 18,),
              const SizedBox(width: 16.0),
              MyButton(title: "Contact Me", onPressed: () {}, color: white, textColor: neuBlack, shadowColor: neuBlack, fontsize: 18,),
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
          //               color: neuBlack,
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //           Text(
          //             " Gaurav ",
          //             textAlign: TextAlign.left,
          //             style: GoogleFonts.archivoBlack(
          //               fontSize: 56.0,
          //               color: neuBlack,
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
