import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paint/screen/login.dart';
import 'package:paint/screen/otp_verification.dart';
import 'package:paint/screen/phone_registration.dart';
import 'package:paint/screen/register.dart';
import 'package:paint/screen/unauth.dart';
import 'package:paint/screen/walkthrough.dart';


// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String RegisterRoute = "register";
const String LoginRoute = "login";
const String PhoneRegisterRoute = "phone-register";
const String OtpVerificationRoute = "otp-verification";
const String UpdateInformationRoute = "update-information";
const String UnAuthenticatedPageRoute = "unauth";
const String regtwo = "otp-verification";
const String regthree = "otp-verification";
const String regfour = "otp-verification";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WalkthroughRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
    case RegisterRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Register());
    case LoginRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Login());
    case PhoneRegisterRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => PhoneRegistration());
    case OtpVerificationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => OtpVerification());
    case UnAuthenticatedPageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => UnAuth());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
