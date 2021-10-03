import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/custom%20widgets/custom_label.dart';
import 'package:shopoth/custom%20widgets/custom_textfield.dart';

class PhotoVerificationPartTwo extends StatelessWidget {
  final professionItem = ["Business", "Government Job"];
  final gender = ['Male', 'Female', 'Others'];

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
          shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 4)),

          elevation: 5,
          title: Text(
            'Photo Verification',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(16, 24.95, 15, 0),
        child: SingleChildScrollView(
          child: Container(
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
                        child:
                            SvgPicture.asset("assets/images/AvatarFrame.svg"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Take a Picture of NID",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      width: 2.0,
                      color: HexColor('#DFE7FF'),
                    )),
                  ),
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
                          "Take a picture of NID (Step 2/2)",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomLabel(
                  LabelName: 'Full Name (In Bangla)',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 10,
                ),
                CustomLabel(
                  LabelName: 'Full Name (In English)',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 10,
                ),
                CustomLabel(
                  LabelName: 'Father’s Name',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 10,
                ),
                CustomLabel(
                  LabelName: 'Mother’s Name',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 10,
                ),
                CustomLabel(
                  LabelName: 'Date of Birth',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 10,
                ),
                CustomLabel(
                  LabelName: 'Address',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 10,
                ),
                CustomLabel(
                  LabelName: 'Present Address',
                  labelColor: '#192434',
                ),
                CustomTextField(label: '', isEnabled: true),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Provide some more Information about you',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Gender',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButton(
                  items: gender.map((String dropDownStringItem) {
                    return DropdownMenuItem(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  // onChanged: (String newValueSelected) {

                  //  },
                  value: gender[0],
                ),
                Text(
                  'Profession',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButton(
                  items: professionItem.map((String dropDownStringItem) {
                    return DropdownMenuItem(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  // onChanged: (String newValueSelected) {

                  //  },
                  value: professionItem[0],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  child: Text('Please upload your Image',
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
                        // goToVerPartTwo();
                      },
                      child: Center(
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: HexColor("#EF4056"),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
