import 'package:intl_phone_field/phone_number.dart';

class UserEntity {
  final String name;
  final String email;
  final String password;
  final PhoneNumber phoneNumber;

  UserEntity({
    required this.name,
    required this.email,
    required this.password,
    required this.phoneNumber,
  });
}
