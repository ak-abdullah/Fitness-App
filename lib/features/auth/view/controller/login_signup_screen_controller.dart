import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginSignupScreenController extends GetxController {
  RxBool isShowSignUp = false.obs;
  void showSignup() {
    isShowSignUp.value = !isShowSignUp.value;
  }

  String showSignupOrLoginText() {
    return isShowSignUp.value ? 'Sign Up' : 'Login';
  }
}
