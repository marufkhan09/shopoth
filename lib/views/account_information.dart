import 'package:flutter/material.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Information"),
      ),
      body: Container(
        child: Center(child: Text('Account info')),
      ),
    );
  }
}
