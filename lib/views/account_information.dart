import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/controller/account_information_contorller.dart';
import 'package:shopoth/controller/my_account_controller.dart';

class AccountInformation extends StatelessWidget {
  // const AccountInformation({Key? key}) : super(key: key);
  final accountInfoController = Get.put(MyAccountController());

  bool isVisible = false;
  bool isVerified = false;

  void _goToCart() {
    print("Go to Cart");
  }

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
            'Account Information',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  _goToCart();
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 24.57, 16, 10),
          child: GetX<MyAccountController>(builder: (controller) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2.0, color: Colors.grey)),
                  ),
                  padding: EdgeInsets.fromLTRB(0, 13, 2, 13),
                  child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "Personal Information",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 186,
                            ),
                            SvgPicture.asset("assets/images/pencil.svg"),
                          ],
                        ),
                      )),
                ),
                Visibility(
                  visible: isVisible,
                  replacement: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "email address",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              //labelText: "Name",
                              hintText: "phone number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Date of Birth",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                              //labelText: "Name",
                              hintText: "date of birth",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "${controller.profile[0].name}",
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Gender",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Date of Birth",
                          style: TextStyle(
                            color: HexColor("#616161"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                isVerified
                    ? ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(HexColor('#5EC52D')),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                        ),
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(23.93, 14, 10.66, 15),
                                child: SvgPicture.asset(
                                  "assets/images/pencil.svg",
                                  color: Colors.white,
                                ),
                                height: 16,
                                width: 16.28,
                              ),
                              Text(
                                "NID Verification Completed",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ))
                    // : Container(
                    //     color: HexColor('#EA2227'),
                    //     margin: EdgeInsets.only(top: 24),
                    //     child: Text(
                    //         'Look like you haven’t completed the NID verification. Lets’ do it now'),
                    //   )
                    : ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(HexColor('#EA2227')),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                        ),
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(24, 14, 14, 32),
                                child: SvgPicture.asset(
                                  "assets/images/pencil.svg",
                                  color: Colors.white,
                                ),
                                height: 16,
                                width: 16.33,
                              ),
                              Container(
                                height: 44,
                                width: 250,
                                child: Text(
                                  "Look like you haven’t completed the NID verification. Lets’ do it now",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                // fromLTRB(20, 23, 18, 19)
                                margin: EdgeInsets.only(
                                    left: 20, top: 23, bottom: 19, right: 14),
                                color: HexColor('#EA2227'),
                                child: SvgPicture.asset(
                                  'assets/images/right.svg',
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2.0, color: Colors.grey)),
                  ),
                  padding: EdgeInsets.fromLTRB(0, 13, 2, 13),
                  child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "My Address",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 258,
                            ),
                            SvgPicture.asset("assets/images/pencil.svg"),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2.0, color: Colors.grey)),
                  ),
                  padding: EdgeInsets.fromLTRB(0, 13, 2, 13),
                  child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "My Outlets",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 258,
                            ),
                            SvgPicture.asset("assets/images/pencil.svg"),
                          ],
                        ),
                      )),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
