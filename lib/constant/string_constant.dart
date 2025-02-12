
import 'package:flutter/material.dart';

class Strings {
  /*Validator class*/

  Strings._();

  static const String appName = "C.Mex";
  static const String appAuthor = "R. Patino, León gto. México";
  static const int versionDatabase = 9;

  static const double cobraOpacity = 0.7;

  static const String byCreated="By @RapySoft";

  static const String typeCollector = "1";

  static const String typeAdmin = "2";

  static const String visibleTrue = "1";

  static const String visibleFalse = "0";

  static const String idRoute = "idRuta";

  static const String date = "fecha";

  static const authorization = "Authorization";

  static const supportEmail = "rapysoft@gmail.com";

  static const supportPhone = "+52 983 214 3405";

  static const paypalLink = "https://www.paypal.me/rapysoft";
  static const epaycoLink ="https://payco.link/236aef1d-6a03-42cc-8b4a-d543ad449cfc";


  static const msgWhatsapp="Hola, me gustaria información sobre la aplicación.";

  static const urlPlayStore="https://play.google.com/store/apps/details?id=com.cobramex&pli=1";
  static const urlAppStore="https://apps.apple.com/us/app/c-mex/id6618117071";

  static const List<String> listTime = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];

  static const List<Color> listColors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.black,
  ];

  static const validEmail =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static const isValidPassword =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  static const isValidPhone = r'^(?:[+0]9)?[0-9]{10}$';

  static const isValidName =
      r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$";

  static const String token = "token";
  static const String modelLoginAdmin = "model_login_admin";
  static const String modelRoute = "model_route";
  static const String modelPay = "model_pay";
  static const String isAdmin = "is_admin";
  static const String activeBiometricAdmin = "active_biometric_admin";
  static const String emailAdmin = "email_admin";
  static const String passwordAdmin = "password_admin";

  static const String page = "page";

  //cobra
  static const String modelLoginCobra = "model_login_cobra";

  static const String themeCollector = "theme_collector";

  static const String modelPermissions = "model_permissions";

  static const String paperSize = "paper_size";
  static const String activeBiometricCobra = "active_biometric_cobra";
  static const String user = "user";
  static const String passwordUser = "password_user";

  static const String filterPay = "filter_pay";


  static const String homeScreen = '/homeScreen';
}
