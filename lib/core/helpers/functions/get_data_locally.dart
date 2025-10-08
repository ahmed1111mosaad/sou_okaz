import 'dart:convert';

import 'package:sou_okaz/Features/Auth/data/models/user_model.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';
import 'package:sou_okaz/core/services/shared_preferences_singleton.dart';
import 'package:sou_okaz/core/utils/keys.dart';

UserEntity getUserDataLocally() {
  String data = SharedPreferencesSingleton.getString(Keys.kSaveUserData);
  UserEntity userEntity = UserModel.fromJson(json: jsonDecode(data));
  return userEntity;
}
