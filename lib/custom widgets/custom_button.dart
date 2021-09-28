import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final String iconImage;
  final Function handler;

  const CustomButton(
      {required this.buttonName,
      required this.iconImage,
      required this.handler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                handler();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
                    // child: Image.asset(iconImage),
                    child: SvgPicture.asset(iconImage),
                    height: 24,
                    width: 24,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    height: 24,
                    width: 216,
                    child: Text(
                      "$buttonName",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset(
                      'assets/images/right.svg',
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
