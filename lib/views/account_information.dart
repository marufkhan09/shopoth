import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shopoth/controller/account_information_contorller.dart';
import 'package:shopoth/controller/my_account_controller.dart';
import 'package:shopoth/custom%20widgets/custom_checkbox.dart';
import 'package:shopoth/custom%20widgets/custom_dropdown_button.dart';
import 'package:shopoth/models/popupmenuitem.dart';

class AccountInformation extends StatelessWidget {
  // const AccountInformation({Key? key}) : super(key: key);
  final accountInfoController = Get.put(MyAccountController());
  // bool isAccountInfoButtonTapped = false;
  bool editButtonTapped = false;
  bool isMyAddressClicked = false;
  bool isMyOutletClicked = true;
  bool isVerified = false;
  bool isSelected = false;
  bool addressExpanded = true;

  void _goToCart() {
    print("Go to Cart");
  }

  void _editTextField() {
    print("Make textfield visible");
  }

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(3, (i) => "Home Address: " + "$i");
    final dropDownbuttomItem = ["Edit", "Delete"];

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
                editButtonTapped
                    ? CustomDropdownButton(
                        buttonName: "Account Information",
                        iconImage: "assets/images/save.svg",
                        handler: _editTextField,
                        space: 143,
                      )
                    : CustomDropdownButton(
                        buttonName: "Account Information",
                        iconImage: "assets/images/pencil.svg",
                        handler: _editTextField,
                        space: 191,
                      ),
                Visibility(
                  visible: true,
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
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: EdgeInsets.only(top: 24),
                  child: ExpansionPanelList(
                    elevation: 0,
                    animationDuration: Duration(milliseconds: 1000),
                    children: [
                      ExpansionPanel(
                        body: Container(
                          child: Column(
                            children: [
                              Visibility(
                                visible: false,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 0, left: 20, right: 16.04),
                                      child: Row(
                                        children: [
                                          Text(
                                            "100% Completed",
                                            style: TextStyle(
                                                color: HexColor("#21409A")),
                                          ),
                                          SizedBox(
                                            width: 113,
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Add a New Address",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: HexColor("#EF4056"),
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: ListView.builder(
                                          itemCount: menuItems.length,
                                          shrinkWrap: true,
                                          primary: false,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 0.1,
                                                        color: Colors.grey)),
                                              ),
                                              child: Container(
                                                height: 62,
                                                child: ListTile(
                                                  title: Text(items[index]),
                                                  trailing: PopupMenuButton(
                                                    icon: Icon(
                                                      Icons.more_vert,
                                                      color: Colors.black,
                                                    ),
                                                    itemBuilder:
                                                        (BuildContext context) {
                                                      return menuItems.map(
                                                          (MenuItem menuItem) {
                                                        return PopupMenuItem(
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    4, 4, 4, 8),
                                                            height: 36,
                                                            width: 96,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                  bottom: BorderSide(
                                                                      width: .1,
                                                                      color: Colors
                                                                          .grey)),
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                SvgPicture
                                                                    .asset(
                                                                  menuItem
                                                                      .iconVal,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Text(
                                                                  menuItem
                                                                      .menuVal,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }).toList();
                                                    },
                                                    // onSelected: ,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                                replacement: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Address Name",
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
                                            //hintText: "Name",
                                            labelText: "Address",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
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
                                                borderRadius:
                                                    BorderRadius.circular(5))),
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
                                                borderRadius:
                                                    BorderRadius.circular(5))),
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
                                                borderRadius:
                                                    BorderRadius.circular(5))),
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
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(width: 2, color: Colors.grey)),
                            ),
                            padding: const EdgeInsets.only(
                                left: 16, top: 10, bottom: 16),
                            child: Text(
                              "My Address",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          );
                        },
                        isExpanded: addressExpanded,
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
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: EdgeInsets.only(top: 24),
                  child: ExpansionPanelList(
                    elevation: addressExpanded ? 0 : 1,
                    animationDuration: Duration(milliseconds: 1000),
                    dividerColor: Colors.red,
                    children: [
                      ExpansionPanel(
                          body: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: SingleChildScrollView(
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
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                          //elevation: ,
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 16,
                                        ),
                                        CustomCheckBox(
                                            sectionName:
                                                "Personal Information"),
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
                          ),
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 16, bottom: 16),
                              child: Text(
                                "My Outlet",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            );
                          },
                          isExpanded: false),
                    ],
                    expansionCallback: (int item, bool status) {
                      // setState(() {
                      //   // itemData[index].expanded =
                      //   // !itemData[index].expanded;
                      // });
                    },
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
