import 'dart:convert';

import 'package:task/features/userapp/data/models/user_model.dart';
import 'package:http/http.dart' as http;

import '../../utils/api_docs.dart';
import '../models/user_data_model.dart';

abstract class RemoteUserServices {
  Future<(bool, List<UserList>?)> remoteUserList(int page);
  Future<(bool, UserDataModel?)> remoteUserData(int id);
}

class RemoteUser implements RemoteUserServices {
  final http.Client client;

  RemoteUser(this.client);

  @override
  Future<(bool, List<UserList>?)> remoteUserList(int page) async {
    final String usersList = 'api/users?page=$page';
    try {
      final response =
          await client.get(Uri.parse('${ApiEndPoints.baseUrl}$usersList'));

      if (response.statusCode == 200) {
        final listdata = (json.decode(response.body)['data'] as List)
            .map((e) => UserList.fromJson(e))
            .toList();

        return (true, listdata);
      } else {
        return (false, null);
      }
    } catch (e) {
      return (false, null);
    }
  }

  @override
  Future<(bool, UserDataModel?)> remoteUserData(int id) async {
    final String userId = 'api/users/$id';

    try {
      final response =
          await client.get(Uri.parse('${ApiEndPoints.baseUrl}$userId'));

      if (response.statusCode == 200) {
        final data = UserDataModel.fromJson(json.decode(response.body));

        return (true, data);
      } else {
        return (false, null);
      }
    } catch (e) {
      return (false, null);
    }
  }
}
