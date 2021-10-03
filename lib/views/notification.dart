import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/models/notification_model.dart';

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
                  Container(
                    child: TextButton(
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
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'ORDER UPDATES',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            color: Colors.grey),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'PROMOTIONS',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            color: Colors.grey),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 5.5),
              child: ListView.builder(
                  itemCount: orderedItem.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey)),
                      ),
                      margin: EdgeInsets.only(top: 16),
                      height: 197,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              // border color
                              color:
                                  HexColor(orderedItem[index].iconBackground),
                              shape: BoxShape.circle,
                            ),
                            margin: EdgeInsets.only(top: 3),
                            height: 20,
                            width: 20,
                            child:
                                SvgPicture.asset(orderedItem[index].buttonIcon),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.12, right: 13.73, bottom: 20),
                            height: 197,
                            width: MediaQuery.of(context).size.width - 76,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Did you enjoy your shopping experience?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Order " +
                                      "${orderedItem[index].orderId}" +
                                      " is completed. Your feedback matters to others! Rate the products by " +
                                      "${orderedItem[index].reviewDate}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                Text(
                                  "${orderedItem[index].orderDate}" +
                                      ", " +
                                      "${orderedItem[index].time}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700],
                                      fontSize: 14),
                                ),
                                Container(
                                  height: 36,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 159,
                                        decoration: BoxDecoration(
                                            color: HexColor("#EF4056"),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                "ORDERED DETAILS",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        width: 16.13,
                                      ),
                                      Container(
                                        width: 123,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: HexColor("#EF4056"))),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                "BUY AGAIN",
                                                style: TextStyle(
                                                  color: HexColor("#EF4056"),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
