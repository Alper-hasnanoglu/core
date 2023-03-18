import 'package:flutter/material.dart';
import 'allProjectFunctions.dart';

class LoginModel extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  get facilities => null;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  fetchFacilities() {}
}

Widget email = const Align(
  alignment: Alignment.topLeft,
  child: Text(
    'Email', // add the goal text above the input box
    style: TextStyle(
      fontSize:
      13, // customize the style of the goal text
    ),
  ),
);
Widget validation =  TextFormField(
  validator: validateEmail,

  decoration: InputDecoration(
    labelText: 'Add Email Here',
    floatingLabelBehavior: FloatingLabelBehavior.never,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      
    ),
  ),
);
Widget password = const Align(
  alignment: Alignment.topLeft,
  child: Text(
    'Password', // add the goal text above the input box
    style: TextStyle(
      fontSize:
      13, // customize the style of the goal text
    ),
  ),
);
