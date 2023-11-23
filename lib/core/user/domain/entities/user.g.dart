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
      gender: fields[0] as String?,
      address: fields[1] as String?,
      username: fields[2] as String?,
      shopName: fields[3] as String?,
      fullname: fields[4] as String?,
      phoneNumber: fields[5] as String?,
      email: fields[6] as String,
      managersNumber: fields[7] as String?,
      password: fields[8] as String,
      numberOfEmployees: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.gender)
      ..writeByte(1)
      ..write(obj.address)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.shopName)
      ..writeByte(4)
      ..write(obj.fullname)
      ..writeByte(5)
      ..write(obj.phoneNumber)
      ..writeByte(6)
      ..write(obj.email)
      ..writeByte(7)
      ..write(obj.managersNumber)
      ..writeByte(8)
      ..write(obj.password)
      ..writeByte(9)
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
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      username: json['username'] as String?,
      shopName: json['shopName'] as String?,
      fullname: json['fullname'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String,
      managersNumber: json['managersNumber'] as String?,
      password: json['password'] as String,
      numberOfEmployees: json['numberOfEmployees'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': instance.gender,
      'address': instance.address,
      'username': instance.username,
      'shopName': instance.shopName,
      'fullname': instance.fullname,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'managersNumber': instance.managersNumber,
      'password': instance.password,
      'numberOfEmployees': instance.numberOfEmployees,
    };
