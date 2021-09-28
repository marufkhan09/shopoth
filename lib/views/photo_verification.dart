import 'package:flutter/material.dart';

class PhotoVerification extends StatelessWidget {
  const PhotoVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhotoVerification"),
      ),
      body: Container(
        child: Center(child: Text('PhotoVerification')),
      ),
    );
  }
}
