import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/drower_box.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool notifiy = false;
  bool popups = false;
  bool order = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 2.h,
          width: 2.w,
          child: Image.asset(
            'lib/assets/asset/menu.png',
            fit: BoxFit.fitWidth,
          ).p16().onTap(() {
            _key.currentState!.openDrawer();
          }),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 19),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: OpenDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          5.h.heightBox,
          Text(
            'Your App Settings',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          3.h.heightBox,
          Text(
            'Notifications',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Receive notifications on latest offers\n'
                'and store updates',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Switch(
                value: notifiy,
                onChanged: (value) {
                  setState(() {
                    notifiy = value;
                    print(notifiy);
                  });
                },
                activeTrackColor: Colors.white,
                activeColor: appthemColor,
                inactiveThumbColor: Colors.grey,
              ),
            ],
          ),
          3.h.heightBox,
          Text(
            'Popups',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Disable all popups and adverts from\n'
                'third party Vendors',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Switch(
                value: popups,
                onChanged: (value) {
                  setState(() {
                    popups = value;
                    print(popups);
                  });
                },
                activeTrackColor: Colors.white,
                activeColor: appthemColor,
                inactiveThumbColor: Colors.grey,
              ),
            ],
          ),
          3.h.heightBox,
          Text(
            'Order History',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Keep your order history on the app\n'
                'unles manually removed',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Switch(
                value: order,
                onChanged: (value) {
                  setState(() {
                    order = value;
                    print(order);
                  });
                },
                activeTrackColor: Colors.white,
                activeColor: appthemColor,
                inactiveThumbColor: Colors.grey,
                //inactiveTrackColor: Colors.white,
              ),
            ],
          ),
          5.h.heightBox,
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Container(
              height: 52,
              width: 360,
              decoration: BoxDecoration(
                color: appthemColor,
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: 'UPDATE SETTINGS'
                  .text
                  .size(10.sp)
                  .letterSpacing(1.5)
                  .bold
                  .white
                  .make()
                  .centered(),
            ).onTap(() {
              //_signupController.CheckSignup();
              //Get.to(()=> LoginScreen());
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
            }),
          ),
        ],
      ).pSymmetric(h: 4.5.w),
    );
  }
}
