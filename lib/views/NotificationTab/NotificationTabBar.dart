import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/views/NotificationTab/promotions.dart';
import 'all_notification_page.dart';
import 'order_updates.dart';

class NotificationTabBar extends StatelessWidget {
  bool isSwitchOn = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          //  backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(104),
            child: AppBar(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.red),
              // shape: Border(bottom: BorderSide(color: Colors.red, width: 3)),
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(2),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    //     border: Border(
                    //   top: BorderSide(width: 2),
                    // )
                    border: Border(
                        top:
                            BorderSide(width: 3.0, color: HexColor('#EF4056'))),
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.only(bottom: 3),
                    labelColor: HexColor('#EF4056'),
                    unselectedLabelColor: Colors.grey,
                    indicator: BoxDecoration(
                      //     border: Border(
                      //   top: BorderSide(width: 2),
                      // )
                      border: Border(
                          bottom: BorderSide(
                              width: 3.0, color: HexColor('#EF4056'))),
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          'ALL',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'ORDER UPDATES',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,

                            // color: Colors.black,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'PROMOTIONS',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            All(),
            OrderUpdates(),
            Promotions(),
          ]),
        ));
  }
}
