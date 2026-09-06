// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_guest_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateGuestListResponse {

@JsonKey(name: 'occasion_id') String get occasionId;@JsonKey(name: 'added_count') int get addedCount;@JsonKey(name: 'skipped_count') int get skippedCount;@JsonKey(name: 'added_invitees') List<AddedInviteeModel> get addedInvitees;
/// Create a copy of UpdateGuestListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateGuestListResponseCopyWith<UpdateGuestListResponse> get copyWith => _$UpdateGuestListResponseCopyWithImpl<UpdateGuestListResponse>(this as UpdateGuestListResponse, _$identity);

  /// Serializes this UpdateGuestListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateGuestListResponse&&(identical(other.occasionId, occasionId) || other.occasionId == occasionId)&&(identical(other.addedCount, addedCount) || other.addedCount == addedCount)&&(identical(other.skippedCount, skippedCount) || other.skippedCount == skippedCount)&&const DeepCollectionEquality().equals(other.addedInvitees, addedInvitees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occasionId,addedCount,skippedCount,const DeepCollectionEquality().hash(addedInvitees));

@override
String toString() {
  return 'UpdateGuestListResponse(occasionId: $occasionId, addedCount: $addedCount, skippedCount: $skippedCount, addedInvitees: $addedInvitees)';
}


}

/// @nodoc
abstract mixin class $UpdateGuestListResponseCopyWith<$Res>  {
  factory $UpdateGuestListResponseCopyWith(UpdateGuestListResponse value, $Res Function(UpdateGuestListResponse) _then) = _$UpdateGuestListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'occasion_id') String occasionId,@JsonKey(name: 'added_count') int addedCount,@JsonKey(name: 'skipped_count') int skippedCount,@JsonKey(name: 'added_invitees') List<AddedInviteeModel> addedInvitees
});




}
/// @nodoc
class _$UpdateGuestListResponseCopyWithImpl<$Res>
    implements $UpdateGuestListResponseCopyWith<$Res> {
  _$UpdateGuestListResponseCopyWithImpl(this._self, this._then);

  final UpdateGuestListResponse _self;
  final $Res Function(UpdateGuestListResponse) _then;

/// Create a copy of UpdateGuestListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? occasionId = null,Object? addedCount = null,Object? skippedCount = null,Object? addedInvitees = null,}) {
  return _then(_self.copyWith(
occasionId: null == occasionId ? _self.occasionId : occasionId // ignore: cast_nullable_to_non_nullable
as String,addedCount: null == addedCount ? _self.addedCount : addedCount // ignore: cast_nullable_to_non_nullable
as int,skippedCount: null == skippedCount ? _self.skippedCount : skippedCount // ignore: cast_nullable_to_non_nullable
as int,addedInvitees: null == addedInvitees ? _self.addedInvitees : addedInvitees // ignore: cast_nullable_to_non_nullable
as List<AddedInviteeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateGuestListResponse].
extension UpdateGuestListResponsePatterns on UpdateGuestListResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateGuestListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateGuestListResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateGuestListResponse value)  $default,){
final _that = this;
switch (_that) {
case _UpdateGuestListResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateGuestListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateGuestListResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'occasion_id')  String occasionId, @JsonKey(name: 'added_count')  int addedCount, @JsonKey(name: 'skipped_count')  int skippedCount, @JsonKey(name: 'added_invitees')  List<AddedInviteeModel> addedInvitees)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateGuestListResponse() when $default != null:
return $default(_that.occasionId,_that.addedCount,_that.skippedCount,_that.addedInvitees);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'occasion_id')  String occasionId, @JsonKey(name: 'added_count')  int addedCount, @JsonKey(name: 'skipped_count')  int skippedCount, @JsonKey(name: 'added_invitees')  List<AddedInviteeModel> addedInvitees)  $default,) {final _that = this;
switch (_that) {
case _UpdateGuestListResponse():
return $default(_that.occasionId,_that.addedCount,_that.skippedCount,_that.addedInvitees);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'occasion_id')  String occasionId, @JsonKey(name: 'added_count')  int addedCount, @JsonKey(name: 'skipped_count')  int skippedCount, @JsonKey(name: 'added_invitees')  List<AddedInviteeModel> addedInvitees)?  $default,) {final _that = this;
switch (_that) {
case _UpdateGuestListResponse() when $default != null:
return $default(_that.occasionId,_that.addedCount,_that.skippedCount,_that.addedInvitees);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateGuestListResponse implements UpdateGuestListResponse {
  const _UpdateGuestListResponse({@JsonKey(name: 'occasion_id') required this.occasionId, @JsonKey(name: 'added_count') required this.addedCount, @JsonKey(name: 'skipped_count') required this.skippedCount, @JsonKey(name: 'added_invitees') required final  List<AddedInviteeModel> addedInvitees}): _addedInvitees = addedInvitees;
  factory _UpdateGuestListResponse.fromJson(Map<String, dynamic> json) => _$UpdateGuestListResponseFromJson(json);

@override@JsonKey(name: 'occasion_id') final  String occasionId;
@override@JsonKey(name: 'added_count') final  int addedCount;
@override@JsonKey(name: 'skipped_count') final  int skippedCount;
 final  List<AddedInviteeModel> _addedInvitees;
@override@JsonKey(name: 'added_invitees') List<AddedInviteeModel> get addedInvitees {
  if (_addedInvitees is EqualUnmodifiableListView) return _addedInvitees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addedInvitees);
}


/// Create a copy of UpdateGuestListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGuestListResponseCopyWith<_UpdateGuestListResponse> get copyWith => __$UpdateGuestListResponseCopyWithImpl<_UpdateGuestListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateGuestListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGuestListResponse&&(identical(other.occasionId, occasionId) || other.occasionId == occasionId)&&(identical(other.addedCount, addedCount) || other.addedCount == addedCount)&&(identical(other.skippedCount, skippedCount) || other.skippedCount == skippedCount)&&const DeepCollectionEquality().equals(other._addedInvitees, _addedInvitees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occasionId,addedCount,skippedCount,const DeepCollectionEquality().hash(_addedInvitees));

@override
String toString() {
  return 'UpdateGuestListResponse(occasionId: $occasionId, addedCount: $addedCount, skippedCount: $skippedCount, addedInvitees: $addedInvitees)';
}


}

/// @nodoc
abstract mixin class _$UpdateGuestListResponseCopyWith<$Res> implements $UpdateGuestListResponseCopyWith<$Res> {
  factory _$UpdateGuestListResponseCopyWith(_UpdateGuestListResponse value, $Res Function(_UpdateGuestListResponse) _then) = __$UpdateGuestListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'occasion_id') String occasionId,@JsonKey(name: 'added_count') int addedCount,@JsonKey(name: 'skipped_count') int skippedCount,@JsonKey(name: 'added_invitees') List<AddedInviteeModel> addedInvitees
});




}
/// @nodoc
class __$UpdateGuestListResponseCopyWithImpl<$Res>
    implements _$UpdateGuestListResponseCopyWith<$Res> {
  __$UpdateGuestListResponseCopyWithImpl(this._self, this._then);

  final _UpdateGuestListResponse _self;
  final $Res Function(_UpdateGuestListResponse) _then;

/// Create a copy of UpdateGuestListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? occasionId = null,Object? addedCount = null,Object? skippedCount = null,Object? addedInvitees = null,}) {
  return _then(_UpdateGuestListResponse(
occasionId: null == occasionId ? _self.occasionId : occasionId // ignore: cast_nullable_to_non_nullable
as String,addedCount: null == addedCount ? _self.addedCount : addedCount // ignore: cast_nullable_to_non_nullable
as int,skippedCount: null == skippedCount ? _self.skippedCount : skippedCount // ignore: cast_nullable_to_non_nullable
as int,addedInvitees: null == addedInvitees ? _self._addedInvitees : addedInvitees // ignore: cast_nullable_to_non_nullable
as List<AddedInviteeModel>,
  ));
}


}


/// @nodoc
mixin _$AddedInviteeModel {

@JsonKey(name: 'invitee_id') String get inviteeId;@JsonKey(name: 'full_name') String get fullName;
/// Create a copy of AddedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddedInviteeModelCopyWith<AddedInviteeModel> get copyWith => _$AddedInviteeModelCopyWithImpl<AddedInviteeModel>(this as AddedInviteeModel, _$identity);

  /// Serializes this AddedInviteeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddedInviteeModel&&(identical(other.inviteeId, inviteeId) || other.inviteeId == inviteeId)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inviteeId,fullName);

@override
String toString() {
  return 'AddedInviteeModel(inviteeId: $inviteeId, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class $AddedInviteeModelCopyWith<$Res>  {
  factory $AddedInviteeModelCopyWith(AddedInviteeModel value, $Res Function(AddedInviteeModel) _then) = _$AddedInviteeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'invitee_id') String inviteeId,@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class _$AddedInviteeModelCopyWithImpl<$Res>
    implements $AddedInviteeModelCopyWith<$Res> {
  _$AddedInviteeModelCopyWithImpl(this._self, this._then);

  final AddedInviteeModel _self;
  final $Res Function(AddedInviteeModel) _then;

/// Create a copy of AddedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inviteeId = null,Object? fullName = null,}) {
  return _then(_self.copyWith(
inviteeId: null == inviteeId ? _self.inviteeId : inviteeId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddedInviteeModel].
extension AddedInviteeModelPatterns on AddedInviteeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddedInviteeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddedInviteeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddedInviteeModel value)  $default,){
final _that = this;
switch (_that) {
case _AddedInviteeModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddedInviteeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddedInviteeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'invitee_id')  String inviteeId, @JsonKey(name: 'full_name')  String fullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddedInviteeModel() when $default != null:
return $default(_that.inviteeId,_that.fullName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'invitee_id')  String inviteeId, @JsonKey(name: 'full_name')  String fullName)  $default,) {final _that = this;
switch (_that) {
case _AddedInviteeModel():
return $default(_that.inviteeId,_that.fullName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'invitee_id')  String inviteeId, @JsonKey(name: 'full_name')  String fullName)?  $default,) {final _that = this;
switch (_that) {
case _AddedInviteeModel() when $default != null:
return $default(_that.inviteeId,_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddedInviteeModel implements AddedInviteeModel {
  const _AddedInviteeModel({@JsonKey(name: 'invitee_id') required this.inviteeId, @JsonKey(name: 'full_name') required this.fullName});
  factory _AddedInviteeModel.fromJson(Map<String, dynamic> json) => _$AddedInviteeModelFromJson(json);

@override@JsonKey(name: 'invitee_id') final  String inviteeId;
@override@JsonKey(name: 'full_name') final  String fullName;

/// Create a copy of AddedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddedInviteeModelCopyWith<_AddedInviteeModel> get copyWith => __$AddedInviteeModelCopyWithImpl<_AddedInviteeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddedInviteeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddedInviteeModel&&(identical(other.inviteeId, inviteeId) || other.inviteeId == inviteeId)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inviteeId,fullName);

@override
String toString() {
  return 'AddedInviteeModel(inviteeId: $inviteeId, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$AddedInviteeModelCopyWith<$Res> implements $AddedInviteeModelCopyWith<$Res> {
  factory _$AddedInviteeModelCopyWith(_AddedInviteeModel value, $Res Function(_AddedInviteeModel) _then) = __$AddedInviteeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'invitee_id') String inviteeId,@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class __$AddedInviteeModelCopyWithImpl<$Res>
    implements _$AddedInviteeModelCopyWith<$Res> {
  __$AddedInviteeModelCopyWithImpl(this._self, this._then);

  final _AddedInviteeModel _self;
  final $Res Function(_AddedInviteeModel) _then;

/// Create a copy of AddedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inviteeId = null,Object? fullName = null,}) {
  return _then(_AddedInviteeModel(
inviteeId: null == inviteeId ? _self.inviteeId : inviteeId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
