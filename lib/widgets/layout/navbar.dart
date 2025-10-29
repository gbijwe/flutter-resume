import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_resume/colors.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuAppBar extends StatelessWidget {
  const NeuAppBar({required this.title, this.borderRadius, this.offset, this.fontSize, this.actions, super.key});

  final String title;
  final double? borderRadius;
  final Offset? offset; 
  final double? fontSize;
  final List<Widget>? actions;
  final int degrees = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: catalinaBlue,
        //     blurRadius: 0,
        //     offset: offset ?? Offset(8, 8),
        //     blurStyle: BlurStyle.solid,
        //   ),
        // ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
          border: Border.fromBorderSide(
            BorderSide(
              color: black,
              width: neuBorder,
              strokeAlign: BorderSide.strokeAlignOutside
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: -degrees * Math.pi / 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: yellow,
                    border: BoxBorder.all(
                      color: black,
                      width: neuBorder,
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      title,
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(
                        color: black,
                        fontSize: fontSize ?? 8.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.0,
                      ),
                      )
                    ),
                  ),
                ),
              ),
              if (actions != null && actions!.isNotEmpty) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: actions!,
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}

