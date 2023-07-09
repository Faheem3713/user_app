// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) userList,
    required TResult Function(int id) userData,
    required TResult Function(int page) LoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? userList,
    TResult? Function(int id)? userData,
    TResult? Function(int page)? LoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? userList,
    TResult Function(int id)? userData,
    TResult Function(int page)? LoadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserList value) userList,
    required TResult Function(_UserData value) userData,
    required TResult Function(_LoadMore value) LoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserList value)? userList,
    TResult? Function(_UserData value)? userData,
    TResult? Function(_LoadMore value)? LoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserList value)? userList,
    TResult Function(_UserData value)? userData,
    TResult Function(_LoadMore value)? LoadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res, UserDataEvent>;
}

/// @nodoc
class _$UserDataEventCopyWithImpl<$Res, $Val extends UserDataEvent>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserListCopyWith<$Res> {
  factory _$$_UserListCopyWith(
          _$_UserList value, $Res Function(_$_UserList) then) =
      __$$_UserListCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_UserListCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$_UserList>
    implements _$$_UserListCopyWith<$Res> {
  __$$_UserListCopyWithImpl(
      _$_UserList _value, $Res Function(_$_UserList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_UserList(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserList implements _UserList {
  const _$_UserList({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'UserDataEvent.userList(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserList &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListCopyWith<_$_UserList> get copyWith =>
      __$$_UserListCopyWithImpl<_$_UserList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) userList,
    required TResult Function(int id) userData,
    required TResult Function(int page) LoadMore,
  }) {
    return userList(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? userList,
    TResult? Function(int id)? userData,
    TResult? Function(int page)? LoadMore,
  }) {
    return userList?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? userList,
    TResult Function(int id)? userData,
    TResult Function(int page)? LoadMore,
    required TResult orElse(),
  }) {
    if (userList != null) {
      return userList(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserList value) userList,
    required TResult Function(_UserData value) userData,
    required TResult Function(_LoadMore value) LoadMore,
  }) {
    return userList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserList value)? userList,
    TResult? Function(_UserData value)? userData,
    TResult? Function(_LoadMore value)? LoadMore,
  }) {
    return userList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserList value)? userList,
    TResult Function(_UserData value)? userData,
    TResult Function(_LoadMore value)? LoadMore,
    required TResult orElse(),
  }) {
    if (userList != null) {
      return userList(this);
    }
    return orElse();
  }
}

abstract class _UserList implements UserDataEvent {
  const factory _UserList({required final int page}) = _$_UserList;

  int get page;
  @JsonKey(ignore: true)
  _$$_UserListCopyWith<_$_UserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_UserData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserData implements _UserData {
  const _$_UserData({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'UserDataEvent.userData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) userList,
    required TResult Function(int id) userData,
    required TResult Function(int page) LoadMore,
  }) {
    return userData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? userList,
    TResult? Function(int id)? userData,
    TResult? Function(int page)? LoadMore,
  }) {
    return userData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? userList,
    TResult Function(int id)? userData,
    TResult Function(int page)? LoadMore,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserList value) userList,
    required TResult Function(_UserData value) userData,
    required TResult Function(_LoadMore value) LoadMore,
  }) {
    return userData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserList value)? userList,
    TResult? Function(_UserData value)? userData,
    TResult? Function(_LoadMore value)? LoadMore,
  }) {
    return userData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserList value)? userList,
    TResult Function(_UserData value)? userData,
    TResult Function(_LoadMore value)? LoadMore,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData(this);
    }
    return orElse();
  }
}

abstract class _UserData implements UserDataEvent {
  const factory _UserData({required final int id}) = _$_UserData;

  int get id;
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_LoadMore(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'UserDataEvent.LoadMore(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMore &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      __$$_LoadMoreCopyWithImpl<_$_LoadMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) userList,
    required TResult Function(int id) userData,
    required TResult Function(int page) LoadMore,
  }) {
    return LoadMore(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? userList,
    TResult? Function(int id)? userData,
    TResult? Function(int page)? LoadMore,
  }) {
    return LoadMore?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? userList,
    TResult Function(int id)? userData,
    TResult Function(int page)? LoadMore,
    required TResult orElse(),
  }) {
    if (LoadMore != null) {
      return LoadMore(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserList value) userList,
    required TResult Function(_UserData value) userData,
    required TResult Function(_LoadMore value) LoadMore,
  }) {
    return LoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserList value)? userList,
    TResult? Function(_UserData value)? userData,
    TResult? Function(_LoadMore value)? LoadMore,
  }) {
    return LoadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserList value)? userList,
    TResult Function(_UserData value)? userData,
    TResult Function(_LoadMore value)? LoadMore,
    required TResult orElse(),
  }) {
    if (LoadMore != null) {
      return LoadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements UserDataEvent {
  const factory _LoadMore({required final int page}) = _$_LoadMore;

  int get page;
  @JsonKey(ignore: true)
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDataState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserEntity> get userList => throw _privateConstructorUsedError;
  UserData? get userData => throw _privateConstructorUsedError;
  bool get isMoreData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<UserEntity> userList,
      UserData? userData,
      bool isMoreData,
      bool isError});
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userList = null,
    Object? userData = freezed,
    Object? isMoreData = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      isMoreData: null == isMoreData
          ? _value.isMoreData
          : isMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataStateCopyWith<$Res>
    implements $UserDataStateCopyWith<$Res> {
  factory _$$_UserDataStateCopyWith(
          _$_UserDataState value, $Res Function(_$_UserDataState) then) =
      __$$_UserDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<UserEntity> userList,
      UserData? userData,
      bool isMoreData,
      bool isError});
}

/// @nodoc
class __$$_UserDataStateCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$_UserDataState>
    implements _$$_UserDataStateCopyWith<$Res> {
  __$$_UserDataStateCopyWithImpl(
      _$_UserDataState _value, $Res Function(_$_UserDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userList = null,
    Object? userData = freezed,
    Object? isMoreData = null,
    Object? isError = null,
  }) {
    return _then(_$_UserDataState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      isMoreData: null == isMoreData
          ? _value.isMoreData
          : isMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserDataState implements _UserDataState {
  const _$_UserDataState(
      {required this.isLoading,
      required final List<UserEntity> userList,
      this.userData,
      required this.isMoreData,
      required this.isError})
      : _userList = userList;

  @override
  final bool isLoading;
  final List<UserEntity> _userList;
  @override
  List<UserEntity> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  final UserData? userData;
  @override
  final bool isMoreData;
  @override
  final bool isError;

  @override
  String toString() {
    return 'UserDataState(isLoading: $isLoading, userList: $userList, userData: $userData, isMoreData: $isMoreData, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.isMoreData, isMoreData) ||
                other.isMoreData == isMoreData) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_userList),
      userData,
      isMoreData,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataStateCopyWith<_$_UserDataState> get copyWith =>
      __$$_UserDataStateCopyWithImpl<_$_UserDataState>(this, _$identity);
}

abstract class _UserDataState implements UserDataState {
  const factory _UserDataState(
      {required final bool isLoading,
      required final List<UserEntity> userList,
      final UserData? userData,
      required final bool isMoreData,
      required final bool isError}) = _$_UserDataState;

  @override
  bool get isLoading;
  @override
  List<UserEntity> get userList;
  @override
  UserData? get userData;
  @override
  bool get isMoreData;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataStateCopyWith<_$_UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
