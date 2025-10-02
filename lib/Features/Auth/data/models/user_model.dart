import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  @override
  final String name;
  @override
  final String email;
  @override
  final String uId;
  @override
  final String phoneNumber;

  UserModel({
    required this.name,
    required this.email,
    required this.uId,
    required this.phoneNumber,
  }) : super(name: name, email: email, uId: uId, phoneNumber: phoneNumber);

  factory UserModel.fromFirebase(User user) {
    return UserModel(
      email: user.email!,
      uId: user.uid,
      name: user.displayName ?? "No name",
      phoneNumber: user.phoneNumber ?? '',
    );
  }
  factory UserModel.fromJson({required Map<String, dynamic> json}) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      uId: json['uId'],
      phoneNumber: json['phoneNumber'],
    );
  }
  toJson() {
    return {
      'name': name,
      'email': email,
      'uId': uId,
      'phoneNumber': phoneNumber,
    };
  }
}
