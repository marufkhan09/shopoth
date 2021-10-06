import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomLabel extends StatelessWidget {
  final String labelName;
  final String labelColor;

  const CustomLabel({required this.labelName, required this.labelColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        labelName,
        style: TextStyle(
          color: HexColor(labelColor),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
