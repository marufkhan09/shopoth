import 'package:flutter/material.dart';
// import 'dart:io';

class CustomTextField extends StatelessWidget {
  final label;
  bool isEnabled;
  // final titleController;
  // final Function submitData;

  CustomTextField({required this.label, required this.isEnabled});
  // required this.titleController,
  // required this.submitData});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 10),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
            //labelText: "Name",
            hintText: label,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        // controller: titleController,
        // onSubmitted: (_) => submitData(),
      ),
    );
  }
}
// Container(
//                                       alignment: Alignment.topLeft,
//                                       margin: EdgeInsets.only(top: 10),
//                                       child: TextField(
//                                         enabled: false,
//                                         decoration: InputDecoration(
//                                             //labelText: "Name",
//                                             hintText: "date of birth",
//                                             border: OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5))),
//                                       ),
//                                     )

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
