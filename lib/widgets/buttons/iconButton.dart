import 'package:flutter/material.dart';
import 'package:flutter_resume/colors.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({required this.icon, this.color, this.shadowColor, this.textColor, this.onPressed, this.fontsize, super.key});
  final Icon icon; 
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
          child: icon,
        )
      )
    );
  }
}