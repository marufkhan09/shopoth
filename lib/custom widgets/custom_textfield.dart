import 'package:flutter/material.dart';
// import 'dart:io';

class CustomTextField extends StatelessWidget {
  final label;
  final titleController;
  final Function submitData;

  CustomTextField(this.label, this.titleController, this.submitData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(labelText: label),
        controller: titleController,
        onSubmitted: (_) => submitData(),
      ),
    );
  }
}
