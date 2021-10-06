import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/models/notification_model.dart';

class All extends StatelessWidget {
  // bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            // border color
                            color: HexColor(orderedItem[index].iconBackground),
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
                                    fontWeight: FontWeight.w600, fontSize: 14),
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
                                      // width: 159,
                                      width: MediaQuery.of(context).size.width *
                                          0.441,
                                      decoration: BoxDecoration(
                                          color: HexColor("#EF4056"),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Center(
                                            child: Text(
                                              "ORDER DETAILS",
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
                                      width: MediaQuery.of(context).size.width *
                                          0.341,
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
    );
  }
}
