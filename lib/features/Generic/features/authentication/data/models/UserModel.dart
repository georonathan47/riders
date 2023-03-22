// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

class LoginResponseModel {
  LoginResponseModel({
    this.refresh,
    this.access,
    this.id,
    this.user,
    this.ghanacard,
    this.vehiclePhotos,
    this.lastLogin,
    this.isSuperuser,
    this.username,
    this.firstName,
    this.lastName,
    this.isStaff,
    this.isActive,
    this.dateJoined,
    this.isVendor,
    this.isRider,
    this.isUser,
    this.isSuperAdmin,
    this.isAdminStaff,
    this.email,
    this.profile,
    this.fullname,
    this.phoneNumber,
    this.dob,
    this.gender,
    this.groups,
    this.userPermissions,
  });

  String? refresh;
  String? access;
  int? id;
  User? user;
  List<dynamic>? ghanacard;
  List<dynamic>? vehiclePhotos;
  dynamic lastLogin;
  bool? isSuperuser;
  String? username;
  String? firstName;
  String? lastName;
  bool? isStaff;
  bool? isActive;
  DateTime? dateJoined;
  bool? isVendor;
  bool? isRider;
  bool? isUser;
  bool? isSuperAdmin;
  bool? isAdminStaff;
  String? email;
  dynamic profile;
  dynamic fullname;
  dynamic phoneNumber;
  dynamic dob;
  dynamic gender;
  List<dynamic>? groups;
  List<dynamic>? userPermissions;

  factory LoginResponseModel.fromRawJson(String str) =>
      LoginResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        refresh: json["refresh"],
        access: json["access"],
        id: json["id"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        ghanacard: json["ghanacard"] == null
            ? []
            : List<dynamic>.from(json["ghanacard"]!.map((x) => x)),
        vehiclePhotos: json["vehicle_photos"] == null
            ? []
            : List<dynamic>.from(json["vehicle_photos"]!.map((x) => x)),
        lastLogin: json["last_login"],
        isSuperuser: json["is_superuser"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        isStaff: json["is_staff"],
        isActive: json["is_active"],
        dateJoined: json["date_joined"] == null
            ? null
            : DateTime.parse(json["date_joined"]),
        isVendor: json["is_vendor"],
        isRider: json["is_rider"],
        isUser: json["is_user"],
        isSuperAdmin: json["is_super_admin"],
        isAdminStaff: json["is_admin_staff"],
        email: json["email"],
        profile: json["profile"],
        fullname: json["fullname"],
        phoneNumber: json["phone_number"],
        dob: json["dob"],
        gender: json["gender"],
        groups: json["groups"] == null
            ? []
            : List<dynamic>.from(json["groups"]!.map((x) => x)),
        userPermissions: json["user_permissions"] == null
            ? []
            : List<dynamic>.from(json["user_permissions"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
        "id": id,
        "user": user?.toJson(),
        "ghanacard": ghanacard == null
            ? []
            : List<dynamic>.from(ghanacard!.map((x) => x)),
        "vehicle_photos": vehiclePhotos == null
            ? []
            : List<dynamic>.from(vehiclePhotos!.map((x) => x)),
        "last_login": lastLogin,
        "is_superuser": isSuperuser,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "is_staff": isStaff,
        "is_active": isActive,
        "date_joined": dateJoined?.toIso8601String(),
        "is_vendor": isVendor,
        "is_rider": isRider,
        "is_user": isUser,
        "is_super_admin": isSuperAdmin,
        "is_admin_staff": isAdminStaff,
        "email": email,
        "profile": profile,
        "fullname": fullname,
        "phone_number": phoneNumber,
        "dob": dob,
        "gender": gender,
        "groups":
            groups == null ? [] : List<dynamic>.from(groups!.map((x) => x)),
        "user_permissions": userPermissions == null
            ? []
            : List<dynamic>.from(userPermissions!.map((x) => x)),
      };
}

class User {
  User({
    this.id,
    this.lincense,
    this.typeOfVehicle,
    this.yearsOfDriving,
    this.vehicleRegistrationNumber,
    this.residentialAddress,
    this.emergencyContact,
    this.status,
    this.user,
  });

  int? id;
  dynamic lincense;
  dynamic typeOfVehicle;
  dynamic yearsOfDriving;
  dynamic vehicleRegistrationNumber;
  dynamic residentialAddress;
  dynamic emergencyContact;
  String? status;
  int? user;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        lincense: json["lincense"],
        typeOfVehicle: json["type_of_vehicle"],
        yearsOfDriving: json["years_of_driving"],
        vehicleRegistrationNumber: json["vehicle_registration_number"],
        residentialAddress: json["residential_address"],
        emergencyContact: json["emergency_contact"],
        status: json["status"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lincense": lincense,
        "type_of_vehicle": typeOfVehicle,
        "years_of_driving": yearsOfDriving,
        "vehicle_registration_number": vehicleRegistrationNumber,
        "residential_address": residentialAddress,
        "emergency_contact": emergencyContact,
        "status": status,
        "user": user,
      };
}
