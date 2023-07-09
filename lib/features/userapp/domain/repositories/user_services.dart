import 'package:task/features/userapp/domain/entities/user_entity.dart';

import '../entities/user_data_entity.dart';

abstract class UserServices {
  Future<(bool, List<UserEntity>?)> getUserList(int page);
  Future<(bool, UserData?)> getUserData(int id);
}
