import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/Password/create_new_password.dart';
import 'package:sugandh/views/Password/forget_password.dart';
import 'package:sugandh/views/RateProduct/rate_product.dart';
import 'package:sugandh/views/accounts/account_page.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/views/cart_screen/cart_page.dart';
import 'package:sugandh/views/category/catagary_screen.dart';
import 'package:sugandh/views/check_out_screens/check_out_address.dart';
import 'package:sugandh/views/check_out_screens/check_out_payment.dart';
import 'package:sugandh/views/check_out_screens/checkout_summary.dart';
import 'package:sugandh/views/discover/discover_screens.dart';
import 'package:sugandh/views/editProfile/edit_profile.dart';
import 'package:sugandh/views/home_screen/home_page.dart';
import 'package:sugandh/views/login/create_account.dart';
import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/notification/Notice_fication.dart';
import 'package:sugandh/views/onboarding/onboarding.dart';
import 'package:sugandh/views/order_acepted/order_accepted.dart';
import 'package:sugandh/views/otp_screens/otp_page.dart';
import 'package:sugandh/views/payment/payment_screens.dart';
import 'package:sugandh/views/products/product2_screen.dart';
import 'package:sugandh/views/products/product_screen.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/views/settings/setting_page.dart';
import 'package:sugandh/views/signup/sign_up.dart';
import 'package:sugandh/views/splash/splash_screen.dart';
import 'package:sugandh/views/splash/welcome_page.dart';
import 'package:sugandh/views/track_order/track_map.dart';
import 'package:sugandh/views/track_order/track_screen.dart';
import 'package:sugandh/widgets/drower_box.dart';

void main() async {
  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: WelcomeSplashScreen(),
        home: Onbording(),
      );
    });
  }
}
