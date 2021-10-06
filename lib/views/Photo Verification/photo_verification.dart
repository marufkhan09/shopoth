import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shopoth/controller/photo_verification_controller.dart';
import 'package:shopoth/views/Photo%20Verification/photo_verificationPartTwo.dart';

class PhotoVerification extends StatelessWidget {
  PhotoVerificationController pvController =
      Get.put(PhotoVerificationController());

  void goToVerPartTwo() {
    Get.to(() => PhotoVerificationPartTwo());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          // backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
          //  shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 3)),

          title: Text(
            'Account Information',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 24.95, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Register your Photo ID in 2 easy steps',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/images/AvatarFrame.svg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Take a Picture of NID",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/images/list.svg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Provide necessary information",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 44.44,
                      width: 50,
                      child: SvgPicture.asset("assets/images/blueAv.svg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 68,
                      width: 189,
                      child: Text(
                        "Take a picture of NID (Step 1/2)",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                child: Text('Please upload your NID front side',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
              // SizedBox(
              //   height: 232,
              // ),
              Container(
                child: Column(
                  children: [
                    Obx(() => pvController.selectedImagePath.value == ''
                        ? Container(
                            height: 232,
                            width: double.infinity,
                            child: Text('Camera'),
                          )
                        : Container(
                            height: 232,
                            width: double.infinity,
                            child: Image.file(
                                File(pvController.selectedImagePath.value)),
                          )),
                    Container(
                      height: 36,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 156,
                            decoration: BoxDecoration(
                                color: HexColor("#EF4056"),
                                borderRadius: BorderRadius.circular(100)),
                            child: TextButton(
                                onPressed: () {
                                  pvController.getImage(ImageSource.camera);
                                },
                                child: Center(
                                  child: Text(
                                    "Capture",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )),
                          ),
                          Container(
                            width: 156,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: HexColor("#EF4056"))),
                            child: TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "Upload",
                                    style: TextStyle(
                                        color: HexColor("#EF4056"),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 24,
              ),
              Container(
                child: Text('Please upload your NID front side',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 232,
              ),
              Container(
                height: 36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 156,
                      decoration: BoxDecoration(
                          color: HexColor("#EF4056"),
                          borderRadius: BorderRadius.circular(100)),
                      child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Capture",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                    ),
                    Container(
                      width: 156,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: HexColor("#EF4056"))),
                      child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Upload",
                              style: TextStyle(
                                  color: HexColor("#EF4056"),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: HexColor("#EF4056"))),
                child: TextButton(
                    onPressed: () {
                      goToVerPartTwo();
                    },
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: HexColor("#EF4056"),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
              SizedBox(
                height: 26,
              )
            ],
          ),
        ),
      ),
    );
  }
}
