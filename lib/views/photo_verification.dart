import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhotoVerification extends StatelessWidget {
  const PhotoVerification({Key? key}) : super(key: key);

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
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.search,
            //       color: Colors.black,
            //     )),
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.notifications_none_sharp,
            //       color: Colors.black,
            //     )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: Container(
        child: Center(child: Text('PhotoVerification')),
      ),
    );
  }
}
