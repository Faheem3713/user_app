part of 'user_data_bloc.dart';

@freezed
class UserDataEvent with _$UserDataEvent {
  const factory UserDataEvent.userList({required int page}) = _UserList;
  const factory UserDataEvent.userData({required int id}) = _UserData;
  const factory UserDataEvent.LoadMore({required int page}) = _LoadMore;
}
