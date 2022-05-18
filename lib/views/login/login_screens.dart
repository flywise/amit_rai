import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/views/Password/forget_password.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/views/login/create_account.dart';
import 'package:sugandh/views/otp_screens/otp_page.dart';
import 'package:sugandh/views/signup/sign_up.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/welcomeButton_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _loginController.loginform,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                3.h.heightBox,
                Center(
                  child: Container(
                    height: 10.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: appthemColor,
                        borderRadius: BorderRadius.circular(30.sp)),
                    child: Center(child: Text("Logo").text.white.make()),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.47,
                  width: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: buttonColor,
                        ),
                      ),
                    ).p2(),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Login in to get started and experience',
                        style: TextStyle(
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ).p2(),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Great shoping deals',
                        style: TextStyle(
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ).p1(),
                    2.h.heightBox,
                    TextFormField(
                      validator: _loginController.validatename,
                      controller: _loginController.username,
                      decoration: InputDecoration(
                        hintText: 'Mobile No',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: appthemColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appthemColor, width: 0.5),
                        ),
                      ),
                    ).pSymmetric(h: 4.w),
                    TextFormField(
                      obscureText: true,
                      validator: _loginController.validatepassword,
                      controller: _loginController.password,
                      decoration: InputDecoration(
                        hintText: 'password',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: appthemColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appthemColor, width: 0.5),
                        ),
                      ),
                    ).pSymmetric(h: 4.w),
                    10.h.heightBox,
                    WelcomeButtonWidget(
                      btnText: "SIGN IN",
                      ontap: () {
                        Get.to(MyDashBoard());
                      },
                    ),
                    3.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(ForgetPassword());
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(color: appthemColor),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(CreateAccount());
                          },
                          child: Text(
                            "Create New Account?",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ).px12()
                  ]),
                ),
                3.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
