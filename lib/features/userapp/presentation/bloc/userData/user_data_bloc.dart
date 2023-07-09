import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/userapp/domain/entities/user_data_entity.dart';
import 'package:task/features/userapp/domain/repositories/user_services.dart';

import '../../../domain/entities/user_entity.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';
part 'user_data_bloc.freezed.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final UserServices userServices;
  UserDataBloc(this.userServices) : super(UserDataState.initial()) {
    on<_$_UserList>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final data = await userServices.getUserList(event.page);
      if (data.$1 == true) {
        emit(UserDataState(
            isMoreData: true,
            isLoading: false,
            userList: data.$2!,
            isError: false));
      } else {
        emit(const UserDataState(
            isLoading: false, userList: [], isError: true, isMoreData: false));
      }
    });

    on<_$_UserData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final data = await userServices.getUserData(event.id);
      if (data.$1 == true) {
        emit(state.copyWith(userData: data.$2, isLoading: false));
      } else {
        emit(const UserDataState(
            isLoading: false, userList: [], isError: true, isMoreData: false));
      }
    });

    on<_LoadMore>((event, emit) async {
      final data = await userServices.getUserList(event.page);
      if (data.$2 == null || data.$2!.isEmpty) {
        emit(state.copyWith(isMoreData: false));
      } else {
        emit(UserDataState(
            isMoreData: true,
            isLoading: false,
            userList: [...state.userList, ...data.$2!],
            isError: false));
      }
    });
  }
}
