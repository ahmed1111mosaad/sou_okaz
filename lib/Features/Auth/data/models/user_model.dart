import 'package:intl_phone_field/phone_number.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final PhoneNumber phoneNumber;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phoneNumber,
  }) : super(
         name: name,
         email: email,
         password: password,
         phoneNumber: phoneNumber,
       );
}