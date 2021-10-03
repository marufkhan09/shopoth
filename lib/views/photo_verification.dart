import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class PhotoVerification extends StatelessWidget {
  const PhotoVerification({Key? key}) : super(key: key);

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
          margin: EdgeInsets.fromLTRB(16, 24.95, 114, 0),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
