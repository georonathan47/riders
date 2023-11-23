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
    @HiveField(0) String? gender,
    @HiveField(1) String? address,
    @HiveField(2) String? username,
    @HiveField(3) String? shopName,
    @HiveField(4) String? fullname,
    @HiveField(5) String? phoneNumber,
    @HiveField(6) required String email,
    @HiveField(7) String? managersNumber,
    @HiveField(8) required String password,
    @HiveField(9) String? numberOfEmployees,
  }) = _User;

  factory User.initial() => User(email: 'rider@d2d.com', password: '');
}
