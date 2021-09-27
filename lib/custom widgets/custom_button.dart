import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final String iconImage;

  const CustomButton({required this.buttonName, required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      // padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Row(
                children: [
                  Container(
                    // child: Image.asset(iconImage),
                    child: SvgPicture.asset(iconImage),
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Container(
                    height: 24,
                    width: 216,
                    child: Text(
                      "$buttonName",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  // Icon(
                  //   Icons.arrow_forward_ios_outlined,
                  //   color: Colors.black,
                  // )
                  SvgPicture.asset("right.svg"),
                  // SizedBox(
                  //   width: 24,
                  // ),
                ],
              )),
        ],
      ),
    );
  }
}
