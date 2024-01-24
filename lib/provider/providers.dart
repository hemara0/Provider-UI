import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/userlogin.dart';
import 'package:http/http.dart' as http;

_setHeaders() => {
      "Content-Type": "application/json",
      "Accept": "*/*",
      "Access-Control-Allow-Origin": "*"
    };

   Future<UserLogin> fetchUserLogin(username, password) async {
  // dynamic userData = {'username': username, 'password': password};
  // print(userData);
  String _url = 'http://localhost:3000/login/username=${username}';
  print(_url);
  final url = Uri.parse(_url);
  try {
    final response = await http.get(url);
    // print(response.body);
    dynamic resBody = json.decode(response.body);
    //dynamic resBody = response.body;
    print(json.decode(response.body));

    if (response.statusCode == 200) {
      if (resBody[0]["username"] == username &&
          resBody[0]["password"] == password) {
        resBody[0]["validate"] = true;
        var userDeets = UserLogin.fromJson(resBody[0]);
        //String patient_id = resBody[0]["patient_id"];
        //userDeets.validate = validate;
        // print(resBody[0]["validate"]);
        print(userDeets.password);
        return userDeets;
      }
    } else {
      // List resBodywrong = [];
      // resBodywrong[0]["validate"] = false;
      // resBodywrong[0]["username"] = '';
      // resBodywrong[0]["password"] = '';
      // resBodywrong[0]["patient_id"] = '';
      // var userDeets = UserLogin.fromJson(resBody[0]);
      // UserLogin(userName: '', password: '', patientId: '', validate: false);
      // bool validate = false;
      // print(validate);
      // return validate;

      throw Exception('Invalid username or password');
    }
  } catch (e) {
    // Log the exception or handle it appropriately
    throw Exception('Error during login: $e');
  }
  return UserLogin(
      userName: 'wrong',
      password: 'wrong',
      patientId: 'wrong',
      validate: false);
}
