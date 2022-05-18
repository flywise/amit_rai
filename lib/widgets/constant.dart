import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const Color themeColor = Color.fromRGBO(12, 255, 223, 1);

const Color appthemColor = Color(0xffF94F46);

//const Color buttonColor= Color.fromRGBO(20, 146, 230, 1);

const Color textColor = Color.fromRGBO(1, 1, 1, 1);

const Color backgroundborder = Color(0xFFBFBFBF);

const Color buttonColor = Colors.black;

LinearGradient gradient1 = LinearGradient(
  colors: [Color(0xFF07C5FC), Color(0xFFD643AB)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient gradient2 = LinearGradient(
  colors: [Color(0xFF79CAEB), Color(0xFFD395C9)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient gradient3 = LinearGradient(
  colors: [Color.fromRGBO(46, 198, 29, 1), Color.fromRGBO(49, 131, 41, 1)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient gradient4 = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  stops: [
    0.1,
    0.5,
    0.9,
  ],
  colors: [
    Color.fromRGBO(255, 69, 33, 1),
    Colors.white,
    Color.fromRGBO(8, 189, 21, 1),
  ],
);

LinearGradient gradient5 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [
    0.1,
    0.2,
    0.5,
    0.9,
  ],
  colors: [
    Color.fromRGBO(210, 106, 91, 1),
    Color.fromRGBO(152, 226, 189, 1),
    Color.fromRGBO(52, 215, 134, 1),
    Color.fromRGBO(15, 197, 148, 1),
  ],
);
String appName = 'ONE_CODE';
//String appLogo='lib/assets/logo.png';

String drawerSelected = '';
