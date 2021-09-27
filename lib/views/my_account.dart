import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/custom widgets/custom_checkbox.dart';
import 'package:shopoth/custom%20widgets/custom_button.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBar(
          backgroundColor: Colors.white,
          // backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
          shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 4)),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
          ),
          elevation: 5,
          title: Text(
            'My Account',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  radius: 100,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/1.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 14,
              width: 60,
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(0))),
                onPressed: () {},
                child: Text(
                  'Edit Photo',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Cameron Williamson',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '025462',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Member since 2021',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.only(left: 16, right: 16),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 1000),
                dividerColor: Colors.red,
                children: [
                  ExpansionPanel(
                    body: SingleChildScrollView(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      child: Column(
                        children: [
                          Center(
                            child: CircularPercentIndicator(
                              radius: 150,
                              percent: 0.7,
                              lineWidth: 15,
                              backgroundColor: HexColor("#DFE7FF"),
                              progressColor: HexColor("#21409A"),
                              startAngle: 120,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: Container(
                              width: 165,
                              height: 22,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shadowColor:
                                      MaterialStateProperty.all(Colors.white),
                                  //elevation: ,
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      "My Progress",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: HexColor("#21409A"),
                                      ),
                                    ),
                                    Icon(
                                      Icons.expand_less,
                                      color: HexColor("#21409A"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                CustomCheckBox(
                                    sectionName: "Personal Information"),
                                SizedBox(
                                  height: 16,
                                ),
                                CustomCheckBox(
                                    sectionName: "Photo Verification"),
                                SizedBox(
                                  height: 16,
                                ),
                                CustomCheckBox(
                                  sectionName: "My Address",
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Center(
                        child: Text(
                          "Your Profile Completed - 70%",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      );
                    },
                    isExpanded: true,
                  ),
                ],
                expansionCallback: (int item, bool status) {
                  // setState(() {
                  //   // itemData[index].expanded =
                  //   // !itemData[index].expanded;
                  // });
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // CustomButton(
            //     buttonName: "Account Information",
            //     iconImage: 'assets/images/Person@3x.svg')
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  CustomButton(
                      buttonName: "Account Information",
                      iconImage: 'assets/images/Person.svg'),
                  CustomButton(
                      buttonName: "Notification",
                      iconImage: 'assets/images/Notification.svg'),
                  CustomButton(
                      buttonName: "My Order",
                      iconImage: 'assets/images/Frame.svg'),
                  CustomButton(
                      buttonName: "Wishlist",
                      iconImage: 'assets/images/love.svg'),
                  CustomButton(
                      buttonName: "Change Password",
                      iconImage: 'assets/images/Vector.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
