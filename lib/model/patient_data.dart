// import 'dart:convert';
// import 'dart:ffi';

// import 'package:flutter/foundation.dart';


// class patientDataModel{
//   patientDataModel({
//     required this.user_orders,
//     required this._id,
//     required this.user_name,
//     required this.user_email,
//     required this.user_govtids,
//     required this.user_hospitals,
//     required this.user_lastlogin,
//     required this.__v,
//     required this.user_address_street,
//     required this.user_bloodgroup,
//     required this.user_city,
//     required this.user_country,
//     required this.user_dob,
//     required this.user_mobile,
//     required this.user_pincode,
//     required this.user_state,
//   });

//   final List<AppointmentModel> user_orders;
//   final String _id;
//   final String user_name;
//   final String user_email;
//   final List<GovIds> user_govtids;
//   final List<UserHospital> user_hospitals;
//   final String user_lastlogin;
//   final int __v;
//   final String user_address_street;
//   final String user_bloodgroup;
//   final String user_city;
//   final String user_country;
//   final String user_dob;
//   final Long user_mobile;
//   final int user_pincode;
//   final String user_state;

//   factory patientDataModel.fromJson(String str) => patientDataModel.fromJson(json.decode(str));
//     String toJson() => json.encode(toMap());

//     factory patientDataModel.fromMap(Map<String, dynamic> json) => patientDataModel(
//       //user_orders : json['user_orders'],
//       user_orders: List<AppointmentModel>.from(json["user_orders"].map((x) => AppointmentModel.fromMap(x))),
//       _id : json['_id'],
//       user_name : json['user_name'],
//       user_email : json['user_email'],
//       //user_govtids: json['user_govtids'],
//       // user_hospitals: ['user_hospitals'],
//       user_govtids:List<GovIds>.from(json["items"].map((x) => GovIds.fromMap(x))),
//       user_hospitals:List<UserHospital>.from(json["items"].map((x) => UserHospital.fromMap(x))),
//       user_lastlogin : json['user_lastlogin'],
//       __v: json['__v'],
//       user_address_street : json['user_address_street'],
//       user_bloodgroup : json['user_bloodgroup'],
//       user_city : json['user_city'],
//       user_country : json['user_country'],
//       user_dob : json['user_dob'],
//       user_mobile : json['user_mobile'],
//       user_pincode : json['user_pincode'],
//       user_state : json['user_state'], 
//     );

//     Map<String, dynamic> toMap() => {
//       "user_orders": List<dynamic>.from(user_orders.map((x) => x.toMap())),
//       "_id" : _id,
//       'user_name' : user_name,
//       "user_email" : user_email,
//       "user_govtids" :  List<dynamic>.from(user_govtids.map((x) => x.toMap())),
//       "user_hospitals" :  List<dynamic>.from(user_hospitals.map((x) => x.toMap())),
//       "user_lastlogin" : user_lastlogin,
//       "__v" : __v,
//       "user_address_street" : user_address_street,
//       "user_bloodgroup" : user_bloodgroup,
//       "user_city" : user_city,
//       "user_country": user_country,
//       "user_dob" : user_dob,
//       "user_mobile" : user_mobile,
//       "user_pincode" : user_pincode,
//       "user_state" : user_state,
//     };

// }



// class AppointmentModel{
//     AppointmentModel( {
//       required this.hospitalId,
//        required this.doctorId,
//        required this.bookingDate,
//        required this.visitDate,
//        required this.visitTime,
//        required this.reasonOfVisit,
//         required this.status,
//         required this._id, 
//     }
//      // required this._id, 
       
//       //required this._id

//     );

//     final String hospitalId;
//     final String doctorId;
//     final DateTime bookingDate;
//     final int  visitDate;
//     final int visitTime;
//     final String reasonOfVisit;
//     final String status;
//     final String _id;

//     factory AppointmentModel.fromJson(String str) => AppointmentModel.fromJson(json.decode(str));
//     String toJson() => json.encode(toMap());

//     factory AppointmentModel.fromMap(Map<String, dynamic> json) => AppointmentModel(
//       hospitalId : json['hospitalId'],
//       doctorId : json['doctorId'],
//       bookingDate : json['bookingDate'],
//       visitDate : json['visitDate'],
//       visitTime : json['visitTime'],
//       reasonOfVisit : json['reasonOfVisit'],
//       status : json['status'],
//       _id : json['_id'],
//     ); 
      
    

//      Map<String, dynamic> toMap() => {
//         'hospitalId' : hospitalId,
//         'doctorId' : doctorId,
//         'bookingDate' : bookingDate,
//         'visitDate' : visitDate,
//         'visitTime' : visitTime,
//         'reasonOfVisit' : reasonOfVisit,
//         'status' : status,
//         '_id' : _id
//       };
// }
    
// class GovIds{
//   GovIds({
//     required this.idType,
//     required this.idNumber,
//     required this._id,
//   });

//   final String idType;
//   final String idNumber;
//   final String _id;

//   factory GovIds.fromJson(String str) => GovIds.fromJson(json.decode(str));
//     String toJson() => json.encode(toMap());

//     factory GovIds.fromMap(Map<String, dynamic> json) => GovIds(
//       idType: json['idType'],
//       idNumber : json['idNumber'],
//       _id : json['_id'],
//     );

//     Map<String, dynamic> toMap() => {
//       "idType" : idType,
//       "idNumber" : idNumber,
//       "_id" : _id,
//     };

// }

// class UserHospital{
//   UserHospital({
//     required this.hospitalName,
//     required this.visits,
//     required this._id,
//   });


//   final String hospitalName;
//   final List<Visits> visits;
//   final String _id;

//   factory UserHospital.fromJson(String str) => UserHospital.fromJson(json.decode(str));
//     String toJson() => json.encode(toMap());

//     factory UserHospital.fromMap(Map<String, dynamic> json) => UserHospital(
//       hospitalName: json['hospitalName'],
//       visits : List<Visits>.from(json["items"].map((x) => Visits.fromMap(x))),
      
//       _id : json['_id'],
//     );

//     Map<String, dynamic> toMap() => {
//       "hospitalName" : hospitalName,
//       "visits" : List<dynamic>.from(visits.map((x) => x.toMap())),
//       "_id" : _id,
//     };
// }

// class Visits {
//   Visits({
//     required this.visitDescription,
//     required this.visitDate,
//     required this._id,
//   });

//   final String visitDescription;
//   final String visitDate;
//   final String _id;

//   factory Visits.fromJson(String str) => Visits.fromJson(json.decode(str));
//     String toJson() => json.encode(toMap());

//     factory Visits.fromMap(Map<String, dynamic> json) => Visits(
//       visitDescription: json['visitDescription'],
//       visitDate : json['visitDate'],
//       _id : json['_id'],
//     );

//     Map<String, dynamic> toMap() => {
//       "visitDescription" : visitDescription,
//       "visitDate" : visitDate,
//       "_id" : _id,
//     };
// // }