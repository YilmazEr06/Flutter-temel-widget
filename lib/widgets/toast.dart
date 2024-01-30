
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String s) {
  Fluttertoast.showToast(
    msg: s,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 16.0,
    
    
  );
}