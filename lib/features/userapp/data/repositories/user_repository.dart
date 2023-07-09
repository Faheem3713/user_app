import 'package:task/features/userapp/data/datasources/remotedata.dart';
import 'package:task/features/userapp/domain/entities/user_data_entity.dart';
import 'package:task/features/userapp/domain/entities/user_entity.dart';
import 'package:task/features/userapp/domain/repositories/user_services.dart';

class UserRepository implements UserServices {
  final RemoteUserServices remoteUser;

  UserRepository(this.remoteUser);
  @override
  @override
  Future<(bool, List<UserEntity>?)> getUserList(int page) async {
    final userList = await remoteUser.remoteUserList(page);
    if (userList.$1 == true) {
      final data = userList.$2!
          .map((e) => UserEntity(
              id: e.id,
              email: e.email,
              firstName: e.firstName,
              lastName: e.lastName,
              avatar: e.avatar))
          .toList();
      return (true, data);
    }
    return (false, null);
  }

  @override
  Future<(bool, UserData?)> getUserData(int id) async {
    final userData = await remoteUser.remoteUserData(id);
    if (userData.$1 == true) {
      final data = userData.$2!;
      final dataEntity = UserData(
          text: data.text,
          url: data.url,
          id: data.id,
          email: data.email,
          firstName: data.firstName,
          lastName: data.lastName,
          avatar: data.avatar);

      return (true, dataEntity);
    }
    return (false, null);
  }
}
