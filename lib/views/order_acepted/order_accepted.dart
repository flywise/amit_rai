import 'package:sugandh/views/track_order/track_screen.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OrderAcepted extends StatelessWidget {
  const OrderAcepted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            )),
        title: Text(
          'Checkout',
          style: TextStyle(
              color: appthemColor,
              fontWeight: FontWeight.w600,
              fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            7.h.heightBox,
            Center(
                child: Image.asset(
              'lib/assets/asset/graphic-offer.png',
              height: 30.h,
            )),
            5.h.heightBox,
            Text(
              'Order Accepted',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
            5.h.heightBox,
            Text(
              'Your Order No #123-456',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            1.h.heightBox,
            Text(
              'has been  placed',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            5.h.heightBox,
            Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Container(
                height: 52,
                width: 360,
                decoration: BoxDecoration(
                  color: appthemColor,
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: 'TRACK ORDER'
                    .text
                    .size(10.sp)
                    .letterSpacing(1.5)
                    .bold
                    .white
                    .make()
                    .centered(),
              ).onTap(() {
                //_signupController.CheckSignup();
                Get.to(() => TrackOrder());
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
              }),
            ),
            0.h.heightBox,
          ],
        ),
      ),
    );
  }
}
