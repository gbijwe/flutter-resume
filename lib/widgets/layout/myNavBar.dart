import 'package:flutter/material.dart';
import 'package:flutter_resume/widgets/layout/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(
            color: neuBlack,
            width: 3,
            // strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: neuBlack.withAlpha(50),
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
              onPressed: null,
              child: Text('About', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: neuBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: null,
               child: Text('Projects', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: neuBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: null,
              child: Text('Skills', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: neuBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextButton(
              onPressed: null,
              child: Text('Contact', 
                style: GoogleFonts.sora(
                  fontSize: 16.0,
                  color: neuBlack,
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