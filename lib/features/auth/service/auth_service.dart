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

  Future<void> uploadImage(BuildContext context) async {
    try {
      final response = await http.post(Uri.parse("${baseUrl}api/v1/auth/add-image"),
        headers: {
          "Content-Type": "application/json",
        }
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
          "email" : "samosno"
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
            var userJson = responseBody['user'];
            // Provider.of<UserProvider>(context, listen: false)
            //     .setUser(jsonEncode(userJson));
            // String? token = userJson['token'];
            // String? blinksID = userJson['blinksID'];
            // if (token != null && blinksID != null) {
            //   await prefs.setString('Authorization', token);
            //   await prefs.setString('user', blinksID);
            //   Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => const ShopScreen(),
            //   ));
            // } else {
            //   print("Error: token or blinksID is null");
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     const SnackBar(content: Text("Login failed. Please try again.")),
            //   );
            // }
          });
    } catch (err) {
      throw (err);
    }
  }
  //
  // //update profile
  // Future<void> updateProfile(BuildContext context, Map<String, dynamic> updates) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString("Authorization");
  //     final Uri url = Uri.parse("$baseUrl/api/v1/blinks/user/update-user-profile");
  //
  //     final response = await http.put(
  //       url,
  //       headers: {
  //         "Authorization": "Bearer $token",
  //         "Content-Type": "application/json",
  //       },
  //       body: jsonEncode(updates),
  //     );
  //     httpErrorHandler(
  //         response: response, context: context, onSuccess: () {
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileUpdateSuccessScreen()));
  //     });
  //   } catch (error) {
  //     print('Error creating recipe: $error');
  //   }
  // }
  // Future<void> updatePassword(BuildContext context, String oldPassword, String newPassword) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString("Authorization");
  //     final Uri url = Uri.parse("$baseUrl/api/v1/blinks/user/update-user-password");
  //
  //     final response = await http.put(
  //       url,
  //       headers: {
  //         "Authorization": "Bearer $token",
  //         "Content-Type": "application/json",
  //       },
  //       body: json.encode({
  //         "oldPassword": oldPassword,
  //         "newPassword": newPassword,
  //       }),
  //     );
  //     httpErrorHandler(
  //         response: response, context: context, onSuccess: () {
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PasswordChangeSuccessScreen()));
  //     });
  //   } catch (error) {
  //     print('Error creating recipe: $error');
  //   }
  // }
  // Future<void> blinksTag(BuildContext context, Map<String, dynamic> userTag) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString("Authorization");
  //     final Uri url = Uri.parse("$baseUrl/api/v1/blinks/user/update-user-profile");
  //
  //     final response = await http.put(
  //       url,
  //       headers: {
  //         "Authorization": "Bearer $token",
  //         "Content-Type": "application/json",
  //       },
  //       body: jsonEncode(userTag),
  //     );
  //     httpErrorHandler(
  //         response: response, context: context, onSuccess: () {
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BlinksTagCreationSuccessScreen()));
  //     });
  //   } catch (error) {
  //     print('Error creating recipe: $error');
  //   }
  // }
  // Future<void> setAccountPIN(BuildContext context, int accountPIN) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString("Authorization");
  //     final response = await http.put(Uri.parse("$baseUrl/api/v1/blinks/user/set-user-account-pin"),
  //         headers: {
  //           "Content-Type": "application/json",
  //           "Authorization": "Bearer $token"
  //         },
  //         body: json.encode({
  //           "accountPIN": accountPIN
  //         })
  //     );
  //     print(response.body);
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AccountPinSuccessScreen()));
  //     } else {
  //       showSnackBar(context: context, message: "We are unable to set your account PIN, please try again later or contact our customer care to help get the issue resolved", title: "Unable To Set PIN");
  //     }
  //   } catch (e) {
  //     showSnackBar(context: context, message: "$e", title: "Server Error");
  //   }
  // }
  //
  // //logout
  // Future<void> logOut(BuildContext context) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString("Authorization");
  //     final response = await http.post(Uri.parse("$baseUrl/api/v1/blinks/auth/user-logout"),
  //         headers: {
  //           "Authorization": "Bearer $token",
  //           "Content-Type": "application/json"
  //         }
  //     );
  //     httpErrorHandler(response: response, context: context, onSuccess: (){
  //       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
  //     });
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
  //     print(e);
  //   }
  // }
}
