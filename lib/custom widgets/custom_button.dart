import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final String iconImage;

  const CustomButton({required this.buttonName, required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            child: Row(
              children: [
                Container(
                  //margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
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
                SvgPicture.asset('assets/images/right.svg')
              ],
            )),
      ],
    );
  }
}
