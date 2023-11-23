import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../services/hive_adapters.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
@HiveType(typeId: HiveAdapters.user)
@JsonSerializable(explicitToJson: true)
class User with _$User {
  factory User({
    String? message,
    @HiveField(0) int? id,
    @HiveField(1) String? gender,
    @HiveField(2) String? address,
    @HiveField(3) String? username,
    @HiveField(4) String? shopName,
    @HiveField(5) String? fullname,
    @HiveField(6) String? firstname,
    @HiveField(7) String? accessToken,
    @HiveField(8) String? phoneNumber,
    @HiveField(9) String? refreshToken,
    @HiveField(10) required String email,
    @HiveField(11) String? managersNumber,
    @HiveField(12) required String password,
    @HiveField(13) String? numberOfEmployees,
  }) = _User;

  factory User.initial() => User(email: 'rider@d2d.com', password: '');
}
