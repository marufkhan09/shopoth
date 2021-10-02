import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationPage extends StatelessWidget {
  bool isSwitchOn = true;
  bool _hasBeenPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          // backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
          shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 4)),

          elevation: 5,
          title: Text(
            'Notification',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            Switch(
              onChanged: (bool value) {
                isSwitchOn = value;
              },
              // HexColor('#EF405661'),
              value: isSwitchOn,
              activeTrackColor: HexColor('#EF4056').withOpacity(.38),
              activeColor: HexColor('#EF4056'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 48,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20.5, right: 20.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'ALL',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: _hasBeenPressed
                              ? HexColor('#EF4056')
                              : Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'ORDER UPDATES',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            color: _hasBeenPressed
                                ? HexColor('#EF4056')
                                : Colors.grey),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'PROMOTIONS',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            color: _hasBeenPressed
                                ? HexColor('#EF4056')
                                : Colors.grey),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
