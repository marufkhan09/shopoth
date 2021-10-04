import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomCheckBox extends StatelessWidget {
  final String sectionName;

  const CustomCheckBox({required this.sectionName});

  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;

    return Container(
      width: MediaQuery.of(context).size.width * 0.536,
      height: MediaQuery.of(context).size.height * 0.0318,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: AnimatedContainer(
              duration: Duration(microseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                  color: _isSelected ? HexColor("#21409A") : Colors.transparent,
                  border: _isSelected
                      ? null
                      : Border.all(
                          color: HexColor("21409A"),
                          width: 2.0,
                        ),
                  borderRadius: BorderRadius.circular(10.0)),
              child: _isSelected
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_sharp,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    )
                  : null,
            ),
          ),
          SizedBox(
            width: 13.3,
          ),
          Text("$sectionName")
        ],
      ),
    );
  }
}
