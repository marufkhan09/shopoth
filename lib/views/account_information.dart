import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/controller/account_information_contorller.dart';

class AccountInformation extends StatelessWidget {
  // const AccountInformation({Key? key}) : super(key: key);
  final accountInfoController = Get.put(AccountInformationController());

  bool isVisible = false;

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
          child: GetX<AccountInformationController>(builder: (controller) {
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
                            SvgPicture.asset("assets/images/love.svg"),
                          ],
                        ),
                      )),
                ),
                Visibility(
                  visible: isVisible,
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
                          "Full Name",
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
              ],
            );
          }),
        ),
      ),
    );
  }
}


// Container(
//               margin: EdgeInsets.fromLTRB(16, 24.57, 16, 16),
//               child: ElevatedButton(
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(Colors.white)),
//                 onPressed: () {},
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(0, 13, 2, 13),
//                   child: Row(
//                     children: [
//                       Text(
//                         "Personal Information",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.black,
//                         ),
//                       ),
//                       // SizedBox(
//                       //   width: 100,
//                       // ),
//                       Container(
//                         height: 18,
//                         width: 18,
//                         margin: EdgeInsets.only(left: 155),
//                         //margin: EdgeInsets.fromLTRB(0, 16, 2, 16),
//                         child: SvgPicture.asset(
//                           "assets/images/love.svg",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),