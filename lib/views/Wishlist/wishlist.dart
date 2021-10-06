import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shopoth/models/wislist_model.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

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
          //shadowColor: Colors.red,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 3)),

          title: Text(
            'Wishlist',
            textAlign: TextAlign.start,
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
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 24,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(16, 24, 34, 16.95),
              child: Text(
                'Your Favourite',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: ListView.builder(
                  itemCount: wishlistItem.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.grey)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 24, right: 5.94),
                            height: 113,
                            child: Row(
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: double.infinity,
                                      child: SvgPicture.asset(
                                          wishlistItem[index].imageUrl),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: SvgPicture.asset(
                                          wishlistItem[index].imageUrl),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 19,
                                ),
                                Container(
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.566,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 15.5),
                                        padding: EdgeInsets.fromLTRB(
                                            4.55, 5.5, 4.55, 5.5),
                                        decoration: BoxDecoration(
                                            color: HexColor('#DFE7FF'),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        height: 24,
                                        //width: 147.1,
                                        child: Text(
                                          "Save tk" +
                                              "${wishlistItem[index].discount}" +
                                              "| was tk" +
                                              "${wishlistItem[index].initialPrice}",
                                          style: TextStyle(
                                              color: HexColor('#EF4056'),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Container(
                                        height: 39.5,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.566,
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          wishlistItem[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Container(
                                        height: 24,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Tk ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "${wishlistItem[index].price}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.91,
                            decoration: BoxDecoration(
                                color: HexColor("#EF4056"),
                                borderRadius: BorderRadius.circular(100)),
                            child: TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "ADD TO CART",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
