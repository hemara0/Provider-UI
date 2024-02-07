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

   Future<ProviderLogin> fetchProviderLogin(username, password) async {
  // dynamic userData = {'username': username, 'password': password};
  // print(userData);
  String _url = 'http://localhost:3000/providerlogin/username=${username}';
  print(_url);
  final url = Uri.parse(_url);
  try {
    final response = await http.get(url);
    // print(response.body);
    dynamic resBody = json.decode(response.body);
    //dynamic resBody = response.body;
    print(json.decode(response.body));

    if (response.statusCode == 200) {
      if (resBody[0]["provider_username"] == username &&
          resBody[0]["provider_password"] == password) {
        resBody[0]["validate"] = true;
        var userDeets = ProviderLogin.fromJson(resBody[0]);
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
  return ProviderLogin(
      userName: 'wrong',
      password: 'wrong',
      patientId: 'wrong',
      validate: false);
}

Future<List> fetchPatientData(patientID) async {
  // dynamic userData = {'username': username, 'password': password};
  // print(userData);
  List<dynamic> patData = [];
  String _url =
      'http://localhost:4004/hapi-fhir-jpaserver/fhir/Patient/${patientID}';
  print(_url);
  final url = Uri.parse(_url);
  try {
    final response = await http.get(url);
    var resBody = json.decode(response.body);
    print('###############');
    print(json.decode(response.body)['gender']);

    patData.add(resBody['id']);
    print(patData);
    patData.add(resBody['name'][0]['given'][0]+" "+resBody['name'][0]['family']);
    print(patData);
    patData.add(resBody['gender']);
    print(patData);
    patData.add(resBody['birthDate']);
    print('###############');
    print(patData);
    return patData;
  } catch (e) {
    print(e);
  }
  throw Exception('Exception entered');
}

Future<List> fetchAllergyRecord(patientID) async {
  List allergyList = [];
  String _url =
      'http://localhost:4004/hapi-fhir-jpaserver/fhir/AllergyIntolerance?patient=${patientID}';
  print(_url);
  final url = Uri.parse(_url);
   final response = await http.get(url);
  var resBody = json.decode(response.body);
  allergyList.add(resBody['total']);
  allergyList.add(resBody['entry']);
  print(resBody);
  return allergyList;
}
Future<List> fetchProcedureRecord(patientID) async {
  List procedureList = [];
  String _url =
      'http://localhost:4004/hapi-fhir-jpaserver/fhir/Procedure?patient=${patientID}';
  print(_url);
  final url = Uri.parse(_url);
   final response = await http.get(url);
  var resBody = json.decode(response.body);
  procedureList.add(resBody['total']);
  procedureList.add(resBody['entry']);
  print(resBody);
  return procedureList;
}