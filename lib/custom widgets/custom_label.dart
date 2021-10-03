import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomLabel extends StatelessWidget {
  final String LabelName;
  final String labelColor;

  const CustomLabel({required this.LabelName, required this.labelColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        LabelName,
        style: TextStyle(
          color: HexColor(labelColor),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
