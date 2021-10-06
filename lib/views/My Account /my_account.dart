import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:shopoth/controller/my_account_controller.dart';
import 'package:shopoth/views/Change%20Password/change_password.dart';
import 'package:shopoth/views/My%20Orders/my_order.dart';
import 'package:shopoth/views/NotificationTab/NotificationTabBar.dart';
import 'package:shopoth/views/Wishlist/wishlist.dart';
//import '../Notification/NotificationTabBar.dart';
import '../Account Information/account_information.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/custom widgets/custom_checkbox.dart';
import 'package:shopoth/custom%20widgets/custom_button.dart';
import 'package:get/get.dart';

class MyAccountPage extends StatelessWidget {
  void _goToAccountInfoPage() {
    Get.to(() => AccountInformation());
  }

  void _goToNotificationPage() {
    Get.to(() => NotificationTabBar());
  }

  void _goToMyOrderPage() {
    Get.to(() => MyOrder());
  }

  void _goToWishlistPage() {
    Get.to(() => Wishlist());
  }

  void _goToPasswordChangePage() {
    Get.to(() => ChangePassword());
  }

  @override
  Widget build(BuildContext context) {
    MyAccountController accountController = Get.put(MyAccountController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.0810),
        // preferredSize: Size.fromHeight(56),
        child: AppBar(
          backgroundColor: Colors.white,
          // backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
          //shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 3)),
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/burgermenu.svg'),
          ),

          title: Text(
            'My Account',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/search.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Notification.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/cart.svg'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.0347),
            Container(
              alignment: Alignment.center,
              //height: 150,
              height: MediaQuery.of(context).size.height * 0.217,
              width: MediaQuery.of(context).size.width * 0.416,
              child: CircleAvatar(
                radius: 100,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/1.png'),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.0173),
            Container(
              // height: 14,
              height: MediaQuery.of(context).size.height * 0.0202,
              //width: 60,
              width: MediaQuery.of(context).size.width * 0.1555,
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
              //height: 8,
              height: MediaQuery.of(context).size.height * 0.0115,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3888,
              child: Text(
                'Cameron Williamson',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0115,
            ),
            Text(
              '025462',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0115,
            ),
            Text(
              'Member since 2021',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.only(left: 16, right: 16),
                child: ExpansionPanelList(
                  //elevation: _expanded ? 0 : 1,
                  // elevation: myAccountController.expanded ? 0 : 1,
                  elevation: accountController.expanded.value ? 0 : 1,
                  animationDuration: Duration(milliseconds: 1000),
                  // dividerColor: Colors.red,
                  children: [
                    ExpansionPanel(
                      body: SingleChildScrollView(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.0231,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              alignment: Alignment.center,
                              // height: MediaQuery.of(context).size.height * 0.246,
                              // width: MediaQuery.of(context).size.width * 0.472,
                              child: Transform.scale(
                                scale: 1.1,
                                child: CircularPercentIndicator(
                                  center: Text(
                                    '70%',
                                    style: TextStyle(
                                        color: HexColor('#21409A'),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  radius: 150,
                                  percent: 0.7,
                                  lineWidth: 15,
                                  backgroundColor: HexColor("#DFE7FF"),
                                  progressColor: HexColor("#21409A"),
                                  startAngle: 120,
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.023,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width:
                                  (MediaQuery.of(context).size.width * 0.3527) +
                                      8,
                              height: (MediaQuery.of(context).size.height *
                                      0.0318) +
                                  7.4,
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2777,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.0611,
                                      child: Text(
                                        "My Progress",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: HexColor("#21409A"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.055,
                                      width: MediaQuery.of(context).size.width *
                                          0.055,
                                      child: SvgPicture.asset(
                                          'assets/images/upward.svg'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.536,
                              height:
                                  MediaQuery.of(context).size.height * 0.153,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // SizedBox(
                                  //   height: MediaQuery.of(context).size.height *
                                  //       0.0231,
                                  // ),
                                  CustomCheckBox(
                                    sectionName: "Personal Information",
                                    isCompleted: true,
                                  ),
                                  // SizedBox(
                                  //   height: MediaQuery.of(context).size.height *
                                  //       0.0231,
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: CustomCheckBox(
                                      sectionName: "Photo Verification",
                                      isCompleted: false,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: MediaQuery.of(context).size.height *
                                  //       0.0231,
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: CustomCheckBox(
                                      sectionName: "My Address",
                                      isCompleted: true,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Your Profile Completed - 70%",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        );
                      },
                      // isExpanded: _expanded,
                      isExpanded: accountController.expanded.value,
                    ),
                  ],
                  expansionCallback: (int item, bool status) {
                    accountController.profileExpandedStatus();
                  },
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0231,
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  CustomButton(
                    buttonName: "Account Information",
                    iconImage: 'assets/images/Person.svg',
                    handler: _goToAccountInfoPage,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0173,
                  ),
                  CustomButton(
                    buttonName: "Notification",
                    iconImage: 'assets/images/Notification.svg',
                    handler: _goToNotificationPage,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0173,
                  ),
                  CustomButton(
                    buttonName: "My Orders",
                    iconImage: 'assets/images/Group.svg',
                    handler: _goToMyOrderPage,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0173,
                  ),
                  CustomButton(
                    buttonName: "Wishlist",
                    iconImage: 'assets/images/love.svg',
                    handler: _goToWishlistPage,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0173,
                  ),
                  CustomButton(
                    buttonName: "Change Password",
                    iconImage: 'assets/images/pencil.svg',
                    handler: _goToPasswordChangePage,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0173,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
