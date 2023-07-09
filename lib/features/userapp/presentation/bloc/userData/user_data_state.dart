part of 'user_data_bloc.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState(
      {required bool isLoading,
      required List<UserEntity> userList,
      UserData? userData,
      required bool isMoreData,
      required bool isError}) = _UserDataState;
  factory UserDataState.initial() => const UserDataState(
      isLoading: false, userList: [], isError: false, isMoreData: true);
}
