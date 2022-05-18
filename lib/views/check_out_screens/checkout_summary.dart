import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sugandh/views/order_acepted/order_accepted.dart';
import 'package:sugandh/views/payment/payment_screens.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import 'checkbox_controller.dart';

class CheckoutSummary extends StatelessWidget {
  CheckoutSummary({Key? key}) : super(key: key);
  Checkbox1 _checkbox1 = Get.put(Checkbox1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 19, color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: Colors.black,
        ).onTap(() {
          Get.back();
        }),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color: appthemColor,
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                  Container(
                    height: 0.2.h,
                    width: 36.w,
                    color: appthemColor,
                  ),
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color: appthemColor,
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                  Container(
                    height: 0.2.h,
                    width: 36.w,
                    color: appthemColor,
                  ),
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color: appthemColor,
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Summary',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              4.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              1.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 17.h,
                    width: 100.w,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey),
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.all(6.sp),
                      child: Container(
                        width: 100.w,
                        height: 16.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.sp),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 28.w,
                              decoration: BoxDecoration(
                                // border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Center(
                                  child: Image.asset(
                                'lib/assets/asset/fullview.png',
                                height: 12.h,
                              )),
                            ),
                            3.w.widthBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                1.h.heightBox,
                                Text(
                                  'Men black raglan shirt',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                1.h.heightBox,
                                Text(
                                  '\$565.0',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                1.h.heightBox,
                                Text("Size : L"),
                              ],
                            ),
                          ],
                        ).p8(),
                      ),
                    ),
                  ).pSymmetric(h: 4.w),
                  1.h.heightBox,
                ],
              ),
              3.h.heightBox,
              Divider(
                color: Colors.grey.shade700,
                height: 2.h,
                thickness: 2,
              ).pSymmetric(h: 4.w),
              Obx(
                () => CircleCheckboxListTile(
                  activeColor: appthemColor,
                  title: const Text(
                    'Shipping Address',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  //controlAffinity: ListTileControlAffinity.leading,
                  value: _checkbox1.value3.value,
                  onChanged: _checkbox1.value3,
                  //secondary: const Icon(Icons.hourglass_empty),
                ),
              ),
              0.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '12,Bay brock,Sharps Rd,keilor East',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              0.5.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Malburne,Australia',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: appthemColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Divider(
                color: Colors.grey.shade700,
                height: 2.h,
                thickness: 2,
              ).pSymmetric(h: 4.w),
              Obx(
                () => CircleCheckboxListTile(
                  activeColor: appthemColor,
                  title: const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  //controlAffinity: ListTileControlAffinity.leading,
                  value: _checkbox1.value4.value,
                  onChanged: _checkbox1.value4,
                  //secondary: const Icon(Icons.hourglass_empty),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'lib/assets/asset/Icon_MasterCard.png',
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Master Card',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '.... .... .... 4543',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ).px16(),
                ],
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: appthemColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 52,
                      width: 170,
                      decoration: BoxDecoration(
                        color: appthemColor,
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: 'PAY'
                          .text
                          .size(10.sp)
                          .letterSpacing(1.5)
                          .bold
                          .white
                          .make()
                          .centered(),
                    ).onTap(() {
                      Get.to(() => OrderAcepted());

                      //_checkoutPaymentController.Checkcvv();
                      //Get.to(()=> OrderAcepted());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                ],
              ).pSymmetric(h: 4.w),
            ],
          ),
        ),
      ),
    );
  }
}
