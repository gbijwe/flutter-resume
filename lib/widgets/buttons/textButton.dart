import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({required this.title, this.color, this.shadowColor, this.textColor, this.onPressed, this.fontsize, this.trailing, super.key});
  final String title; 
  final Color? color; 
  final Color? shadowColor; 
  final Color? textColor; 
  final Function()? onPressed;
  final double? fontsize;
  final Widget? trailing; 

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
            color: black, 
            width: 2.0,
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor ?? black, 
              offset: Offset(3, 3)
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: trailing != null ? 
            Row(
            children: [
              Text(
                title, 
                style: GoogleFonts.archivoBlack(
                  fontSize: fontsize ?? 14.0, 
                  color: textColor ?? black,
                  fontWeight: FontWeight.normal
                )
              ),
                const SizedBox(width: 4.0),
                trailing!,
              ]
            )
           : Text(
              title, 
              style: GoogleFonts.archivoBlack(
                fontSize: fontsize ?? 14.0, 
                color: textColor ?? black,
                fontWeight: FontWeight.normal
              )
            ),
        )
      )
    );
  }
}