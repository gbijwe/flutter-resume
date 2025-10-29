import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MyButton extends StatelessWidget {
  const MyButton({required this.title, this.color, this.shadowColor, this.textColor, this.onPressed, this.fontsize, super.key});
  final String title; 
  final Color? color; 
  final Color? shadowColor; 
  final Color? textColor; 
  final Function()? onPressed;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: color ?? white,
          border: BoxBorder.all(
            color: neuBlack, 
            width: 2.0,
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor ?? neuBlack, 
              offset: Offset(3, 3)
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            title, 
            style: GoogleFonts.archivoBlack(
              fontSize: fontsize ?? 14.0, 
              color: textColor ?? neuBlack,
              fontWeight: FontWeight.normal
            )
          ),
        )
      )
    );
  }
}