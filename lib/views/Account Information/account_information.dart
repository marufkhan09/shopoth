import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/controller/account_information_contorller.dart';
import 'package:shopoth/custom%20widgets/custom_dropdown_button.dart';
import 'package:shopoth/custom%20widgets/custom_label.dart';
import 'package:shopoth/custom%20widgets/custom_textfield.dart';
import 'package:shopoth/models/outlet_model.dart';
import 'package:shopoth/models/popupmenuitem.dart';
import 'package:shopoth/views/Photo%20Verification/photo_verification.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AccountInformation extends StatelessWidget {
  AccountInformationController accountInfoController =
      Get.put(AccountInformationController());

  // account information edit
  //bool editButtonTapped = true;
  // my address expansion menu clicked

  bool isMyOutletClicked = true;
  bool isVerified = false;

  void _goToVerificationPage() {
    Get.to(() => PhotoVerification());
  }

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(3, (i) => "Home Address: " + "$i");

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.0810),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          // backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
          //shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 3)),
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
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/cart.svg'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 24.57, 16, 10),
          child: Column(
            children: [
              Obx(
                () => Column(
                  children: [
                    Container(
                      child: accountInfoController.accountInfoTapped.value
                          ? CustomDropdownButton(
                              buttonName: "Account Information",
                              iconImage: "assets/images/save.svg",
                              handler: accountInfoController.editStatus,
                              space: MediaQuery.of(context).size.width * .33,
                            )
                          : CustomDropdownButton(
                              buttonName: "Account Information",
                              iconImage: "assets/images/pencil.svg",
                              handler: accountInfoController.editStatus,
                              space: 191,
                            ),
                    ),
                    Container(
                      child: Visibility(
                        visible: accountInfoController.accountInfoTapped.value,
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
                                "${accountInfoController.profile[0].name}",
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: isVerified
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
                        onPressed: () {
                          _goToVerificationPage();
                        },
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
              ),
              Obx(
                () => Container(
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
                                visible: true,
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
                                    CustomLabel(
                                      labelName: 'Address Name',
                                      labelColor: '#616161',
                                    ),
                                    CustomTextField(
                                      label: 'address',
                                      isEnabled: true,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomLabel(
                                      labelName: 'Email Address',
                                      labelColor: '#616161',
                                    ),
                                    CustomTextField(
                                      label: 'email address',
                                      isEnabled: true,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomLabel(
                                      labelName: 'Phone Number',
                                      labelColor: '#616161',
                                    ),
                                    CustomTextField(
                                      label: 'phone number',
                                      isEnabled: true,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomLabel(
                                      labelName: 'Date of Birth',
                                      labelColor: '#616161',
                                    ),
                                    CustomTextField(
                                        label: 'date of birth', isEnabled: true)
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
                        isExpanded:
                            accountInfoController.isMyAddressClicked.value,
                      ),
                    ],
                    expansionCallback: (int item, bool status) {
                      accountInfoController.addressBarStatus();
                    },
                  ),
                ),
              ),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: EdgeInsets.only(top: 24),
                  child: ExpansionPanelList(
                    elevation: isMyOutletClicked ? 0 : 1,
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
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.297,
                                          child: Text(
                                            "100% Completed",
                                            style: TextStyle(
                                                color: HexColor("#21409A")),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.34,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Choose List",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: HexColor("#EF4056"),
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: ListView.builder(
                                      itemCount: outletDetail.length,
                                      shrinkWrap: true,
                                      primary: false,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 16),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1.0,
                                                    color: Colors.grey)),
                                          ),
                                          // height: MediaQuery.of(context)
                                          //         .size
                                          //         .height *
                                          //     0.232,
                                          height: 161,
                                          width: double.infinity,
                                          //color: Colors.blue[100],
                                          child: Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .51,
                                                //color: Colors.amber,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.515,
                                                      // color: Colors.red,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "1. " +
                                                                outletDetail[
                                                                        index]
                                                                    .name,
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          SizedBox(
                                                            height: 1,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left:
                                                                        25.25),
                                                            child: Text(
                                                              'Store' +
                                                                  outletDetail[
                                                                          index]
                                                                      .storeId,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left:
                                                                        25.25),
                                                            child: Text(
                                                              outletDetail[
                                                                      index]
                                                                  .address,
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      '#616161'),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left:
                                                                        25.25),
                                                            child: Text(
                                                              outletDetail[
                                                                      index]
                                                                  .district,
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      '#616161'),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 18,
                                                          ),
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                  'assets/images/Person.svg'),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  outletDetail[
                                                                          index]
                                                                      .ownerName,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 8,
                                                          ),
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                'assets/images/phone.svg',
                                                                width: 24,
                                                                height: 24,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  outletDetail[
                                                                          index]
                                                                      .phoneNum,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400))
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.0260,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.24,

                                                          //0.2944,
                                                          child:
                                                              RatingBar.builder(
                                                            minRating: 1,
                                                            itemSize: 20,
                                                            itemBuilder:
                                                                (context, _) =>
                                                                    Icon(
                                                              Icons
                                                                  .star_border_rounded,
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            allowHalfRating:
                                                                true,
                                                            onRatingUpdate:
                                                                (rating) {
                                                              //setstate
                                                            },
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.013,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 5),
                                                          child: Text(
                                                              //change this according to given rating
                                                              '(${outletDetail[index].rating})'),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 65.0,
                                                              top: 16),
                                                      child: Text(
                                                        '${outletDetail[index].numOfRating}' +
                                                            ' Ratings',
                                                        style: TextStyle(),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8,
                                                              left: 38.0),
                                                      child: Text(
                                                        '${outletDetail[index].comments}' +
                                                            ' Comments',
                                                        style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
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
                          isExpanded:
                              accountInfoController.isMyOutletClicked.value),
                    ],
                    expansionCallback: (int item, bool status) {
                      accountInfoController.outletBarStatus();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
