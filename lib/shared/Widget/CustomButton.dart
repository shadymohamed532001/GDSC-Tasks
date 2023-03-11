import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, this.Buttoncolor, required this.text, this.textcolor, this.ontap});
  Color? Buttoncolor;
  Color? textcolor;
  String? text;
  final VoidCallback? ontap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Buttoncolor,
            border: Border.all(width: 1, color: Color(0xFF6a66ff)),
            borderRadius: BorderRadius.circular(16)),
        height: 50,
        width: 350,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                color: textcolor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
