import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tidmuv/features/auth/registration/screens/registration_success.dart';
import 'package:tidmuv/utilities/constants/app_strings.dart';

import '../../../utilities/shared_components/http_error_handler.dart';
import '../model/user_provider.dart';

class AuthService with ChangeNotifier {
  String baseUrl = AppStrings.serverLink;

  //registration
  Future<void> registerUser(
      BuildContext context,
      String firstName,
      String lastName,
      String middleName,
      String phoneNumber,
      String dateofbirth,
      String email,
      String gender,
      ) async {
    try {
      final response = await http.post(
          Uri.parse("${baseUrl}api/v1/auth/register"),
          headers: {"Content-Type": "application/json"},
          body: json.encode({
            "email": email,
            "first_name": firstName,
            "last_name": lastName,
            "middlename": middleName,
            "dateofbirth": dateofbirth,
            "gender": gender,
            "phone_num" : phoneNumber
          }));
      httpErrorHandler(
          response: response,
          context: context,
          onSuccess: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (context) => const RegistrationSuccess()),
                    (route) => false);
          });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  Future<void> verifySSN(BuildContext context, String ssn) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/ssn-verification"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "ssn" : ssn
        })
      );
    } catch (e) {
      print(e);
    }
  }
  Future<void> uploadImage(BuildContext context, String image_url) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/add-image"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "image_url" : image_url
        })
      );
    } catch (e) {
      print(e);
    }
  }
  Future<void> addProfile(BuildContext context, String address, String apartment, String state, String city, String zip_code) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/add-profile"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "address" : address,
          "apartment" : apartment,
          "state" : state,
          "city" : city,
          "zip_code" : zip_code
        })
      );
    } catch (e) {
      print(e);
    }
  }
  Future<void> resendOTP(BuildContext context) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/resend-otp"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({})
      );
    } catch (e) {
      print(e);
    }
  }
  Future<void> forgottenPassword(BuildContext context, String email) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/forgotten-password"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "email" : email
        })
      );
    } catch (e) {
      print(e);
    }
  }
  Future<void> resetPassword(BuildContext context, String token, String password) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/reset-password"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "token" : token,
          "password": password
        })
      );
    } catch (e) {
      print(e);
    }
  }
  Future<void> verifyEmail(BuildContext context, String token, String userName, String password) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/email-verification"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "token" : token,
          "username" : userName,
          "password" : password
        })
      );
    } catch (e) {
      print(e);
    }
  }

  //login
  Future<void> userLogin(
      BuildContext context, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("${baseUrl}api/v1/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: json.encode(
          {
            "email": email,
            "password": password,
          },
        ),
      );
      httpErrorHandler(
          response: response,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            var responseBody = jsonDecode(response.body);
          });
    } catch (err) {
      throw (err);
    }
  }
}
