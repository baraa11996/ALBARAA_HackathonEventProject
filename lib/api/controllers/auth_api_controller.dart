import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hakathon/helpers/helpers.dart';
import 'package:hakathon/model/user.dart';
import 'package:hakathon/prefs/shared_pref_controller.dart';
import 'package:http/http.dart' as http;

import '../api_settings.dart';

class AuthApiController with Helpers {

  Future<bool> login(BuildContext context,
      {required String mobile, required String password}) async {
    var url = Uri.parse(ApiSettings.login);
    var response = await http.post(url, body: {
      'mobile': mobile,
      'password': password,

    });
    if (response.statusCode == 200) {
      //
      var jsonObject = jsonDecode(response.body)['data'];
      User user = User.fromJson(jsonObject);
      SharedPrefController().save(user: user);
      Map<String, dynamic> responseBodyData = jsonDecode(response.body)['data'];
      await SharedPrefController()
          .setToken(token: responseBodyData['token']);
      showSnackBar(
        context: context,
        message: jsonDecode(response.body)['message'],
      );
      return true;
    } else if (response.statusCode == 400) {
      showSnackBar(
          context: context,
          message: jsonDecode(response.body)['message'],
          error: true);
    }
    return false;
  }

}

