// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as int?,
      gender: fields[1] as String?,
      email: fields[2] as String?,
      address: fields[3] as String?,
      shopName: fields[4] as String?,
      fullname: fields[5] as String?,
      firstname: fields[6] as String?,
      accessToken: fields[7] as String?,
      phoneNumber: fields[8] as String?,
      refreshToken: fields[9] as String?,
      managersNumber: fields[10] as String?,
      username: fields[11] as String,
      password: fields[12] as String,
      numberOfEmployees: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.gender)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.shopName)
      ..writeByte(5)
      ..write(obj.fullname)
      ..writeByte(6)
      ..write(obj.firstname)
      ..writeByte(7)
      ..write(obj.accessToken)
      ..writeByte(8)
      ..write(obj.phoneNumber)
      ..writeByte(9)
      ..write(obj.refreshToken)
      ..writeByte(10)
      ..write(obj.managersNumber)
      ..writeByte(11)
      ..write(obj.username)
      ..writeByte(12)
      ..write(obj.password)
      ..writeByte(13)
      ..write(obj.numberOfEmployees);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      message: json['message'] as String?,
      id: json['id'] as int?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      shopName: json['shopName'] as String?,
      fullname: json['fullname'] as String?,
      firstname: json['firstname'] as String?,
      accessToken: json['accessToken'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      refreshToken: json['refreshToken'] as String?,
      managersNumber: json['managersNumber'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      numberOfEmployees: json['numberOfEmployees'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'message': instance.message,
      'id': instance.id,
      'gender': instance.gender,
      'email': instance.email,
      'address': instance.address,
      'shopName': instance.shopName,
      'fullname': instance.fullname,
      'firstname': instance.firstname,
      'accessToken': instance.accessToken,
      'phoneNumber': instance.phoneNumber,
      'refreshToken': instance.refreshToken,
      'managersNumber': instance.managersNumber,
      'username': instance.username,
      'password': instance.password,
      'numberOfEmployees': instance.numberOfEmployees,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      message: json['message'] as String?,
      id: json['id'] as int?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      shopName: json['shopName'] as String?,
      fullname: json['fullname'] as String?,
      firstname: json['firstname'] as String?,
      accessToken: json['accessToken'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      refreshToken: json['refreshToken'] as String?,
      managersNumber: json['managersNumber'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      numberOfEmployees: json['numberOfEmployees'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'id': instance.id,
      'gender': instance.gender,
      'email': instance.email,
      'address': instance.address,
      'shopName': instance.shopName,
      'fullname': instance.fullname,
      'firstname': instance.firstname,
      'accessToken': instance.accessToken,
      'phoneNumber': instance.phoneNumber,
      'refreshToken': instance.refreshToken,
      'managersNumber': instance.managersNumber,
      'username': instance.username,
      'password': instance.password,
      'numberOfEmployees': instance.numberOfEmployees,
    };
