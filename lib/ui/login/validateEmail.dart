import 'package:flutter/cupertino.dart';

String? validateEmail(String? email) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(pattern);
  if (email != null && regExp.hasMatch(email)) {
    return null;
  } else {
    const String errorText = 'Please enter a valid email';
    return errorText;
  }
}

