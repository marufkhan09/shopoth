import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropdownButton extends StatelessWidget {
  final String buttonName;
  final String iconImage;
  final double space;
  final Function handler;

  const CustomDropdownButton(
      {required this.buttonName,
      required this.iconImage,
      required this.handler,
      required this.space});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2.0, color: Colors.grey)),
      ),
      padding: EdgeInsets.fromLTRB(0, 13, 2, 13),
      child: TextButton(
          onPressed: () {},
          child: Container(
            child: Row(
              children: [
                Container(
                  child: Text(
                    "$buttonName",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: space,
                ),
                Container(
                  child: SvgPicture.asset(iconImage),
                ),
              ],
            ),
          )),
    );
  }
}
