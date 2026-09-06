// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_guest_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddGuestResponse {

@JsonKey(name: 'occasion_id') String get occasionId;@JsonKey(name: 'created_invitees') List<CreatedInviteeModel> get createdInvitees; List<CreatedInviteeModel> get duplicates;
/// Create a copy of AddGuestResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddGuestResponseCopyWith<AddGuestResponse> get copyWith => _$AddGuestResponseCopyWithImpl<AddGuestResponse>(this as AddGuestResponse, _$identity);

  /// Serializes this AddGuestResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddGuestResponse&&(identical(other.occasionId, occasionId) || other.occasionId == occasionId)&&const DeepCollectionEquality().equals(other.createdInvitees, createdInvitees)&&const DeepCollectionEquality().equals(other.duplicates, duplicates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occasionId,const DeepCollectionEquality().hash(createdInvitees),const DeepCollectionEquality().hash(duplicates));

@override
String toString() {
  return 'AddGuestResponse(occasionId: $occasionId, createdInvitees: $createdInvitees, duplicates: $duplicates)';
}


}

/// @nodoc
abstract mixin class $AddGuestResponseCopyWith<$Res>  {
  factory $AddGuestResponseCopyWith(AddGuestResponse value, $Res Function(AddGuestResponse) _then) = _$AddGuestResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'occasion_id') String occasionId,@JsonKey(name: 'created_invitees') List<CreatedInviteeModel> createdInvitees, List<CreatedInviteeModel> duplicates
});




}
/// @nodoc
class _$AddGuestResponseCopyWithImpl<$Res>
    implements $AddGuestResponseCopyWith<$Res> {
  _$AddGuestResponseCopyWithImpl(this._self, this._then);

  final AddGuestResponse _self;
  final $Res Function(AddGuestResponse) _then;

/// Create a copy of AddGuestResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? occasionId = null,Object? createdInvitees = null,Object? duplicates = null,}) {
  return _then(_self.copyWith(
occasionId: null == occasionId ? _self.occasionId : occasionId // ignore: cast_nullable_to_non_nullable
as String,createdInvitees: null == createdInvitees ? _self.createdInvitees : createdInvitees // ignore: cast_nullable_to_non_nullable
as List<CreatedInviteeModel>,duplicates: null == duplicates ? _self.duplicates : duplicates // ignore: cast_nullable_to_non_nullable
as List<CreatedInviteeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddGuestResponse].
extension AddGuestResponsePatterns on AddGuestResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddGuestResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddGuestResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddGuestResponse value)  $default,){
final _that = this;
switch (_that) {
case _AddGuestResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddGuestResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AddGuestResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'occasion_id')  String occasionId, @JsonKey(name: 'created_invitees')  List<CreatedInviteeModel> createdInvitees,  List<CreatedInviteeModel> duplicates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddGuestResponse() when $default != null:
return $default(_that.occasionId,_that.createdInvitees,_that.duplicates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'occasion_id')  String occasionId, @JsonKey(name: 'created_invitees')  List<CreatedInviteeModel> createdInvitees,  List<CreatedInviteeModel> duplicates)  $default,) {final _that = this;
switch (_that) {
case _AddGuestResponse():
return $default(_that.occasionId,_that.createdInvitees,_that.duplicates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'occasion_id')  String occasionId, @JsonKey(name: 'created_invitees')  List<CreatedInviteeModel> createdInvitees,  List<CreatedInviteeModel> duplicates)?  $default,) {final _that = this;
switch (_that) {
case _AddGuestResponse() when $default != null:
return $default(_that.occasionId,_that.createdInvitees,_that.duplicates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddGuestResponse implements AddGuestResponse {
  const _AddGuestResponse({@JsonKey(name: 'occasion_id') required this.occasionId, @JsonKey(name: 'created_invitees') required final  List<CreatedInviteeModel> createdInvitees, required final  List<CreatedInviteeModel> duplicates}): _createdInvitees = createdInvitees,_duplicates = duplicates;
  factory _AddGuestResponse.fromJson(Map<String, dynamic> json) => _$AddGuestResponseFromJson(json);

@override@JsonKey(name: 'occasion_id') final  String occasionId;
 final  List<CreatedInviteeModel> _createdInvitees;
@override@JsonKey(name: 'created_invitees') List<CreatedInviteeModel> get createdInvitees {
  if (_createdInvitees is EqualUnmodifiableListView) return _createdInvitees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_createdInvitees);
}

 final  List<CreatedInviteeModel> _duplicates;
@override List<CreatedInviteeModel> get duplicates {
  if (_duplicates is EqualUnmodifiableListView) return _duplicates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_duplicates);
}


/// Create a copy of AddGuestResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddGuestResponseCopyWith<_AddGuestResponse> get copyWith => __$AddGuestResponseCopyWithImpl<_AddGuestResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddGuestResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddGuestResponse&&(identical(other.occasionId, occasionId) || other.occasionId == occasionId)&&const DeepCollectionEquality().equals(other._createdInvitees, _createdInvitees)&&const DeepCollectionEquality().equals(other._duplicates, _duplicates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occasionId,const DeepCollectionEquality().hash(_createdInvitees),const DeepCollectionEquality().hash(_duplicates));

@override
String toString() {
  return 'AddGuestResponse(occasionId: $occasionId, createdInvitees: $createdInvitees, duplicates: $duplicates)';
}


}

/// @nodoc
abstract mixin class _$AddGuestResponseCopyWith<$Res> implements $AddGuestResponseCopyWith<$Res> {
  factory _$AddGuestResponseCopyWith(_AddGuestResponse value, $Res Function(_AddGuestResponse) _then) = __$AddGuestResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'occasion_id') String occasionId,@JsonKey(name: 'created_invitees') List<CreatedInviteeModel> createdInvitees, List<CreatedInviteeModel> duplicates
});




}
/// @nodoc
class __$AddGuestResponseCopyWithImpl<$Res>
    implements _$AddGuestResponseCopyWith<$Res> {
  __$AddGuestResponseCopyWithImpl(this._self, this._then);

  final _AddGuestResponse _self;
  final $Res Function(_AddGuestResponse) _then;

/// Create a copy of AddGuestResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? occasionId = null,Object? createdInvitees = null,Object? duplicates = null,}) {
  return _then(_AddGuestResponse(
occasionId: null == occasionId ? _self.occasionId : occasionId // ignore: cast_nullable_to_non_nullable
as String,createdInvitees: null == createdInvitees ? _self._createdInvitees : createdInvitees // ignore: cast_nullable_to_non_nullable
as List<CreatedInviteeModel>,duplicates: null == duplicates ? _self._duplicates : duplicates // ignore: cast_nullable_to_non_nullable
as List<CreatedInviteeModel>,
  ));
}


}


/// @nodoc
mixin _$CreatedInviteeModel {

@JsonKey(name: 'invitee_id') String get inviteeId;@JsonKey(name: 'full_name') String get fullName;
/// Create a copy of CreatedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedInviteeModelCopyWith<CreatedInviteeModel> get copyWith => _$CreatedInviteeModelCopyWithImpl<CreatedInviteeModel>(this as CreatedInviteeModel, _$identity);

  /// Serializes this CreatedInviteeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedInviteeModel&&(identical(other.inviteeId, inviteeId) || other.inviteeId == inviteeId)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inviteeId,fullName);

@override
String toString() {
  return 'CreatedInviteeModel(inviteeId: $inviteeId, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class $CreatedInviteeModelCopyWith<$Res>  {
  factory $CreatedInviteeModelCopyWith(CreatedInviteeModel value, $Res Function(CreatedInviteeModel) _then) = _$CreatedInviteeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'invitee_id') String inviteeId,@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class _$CreatedInviteeModelCopyWithImpl<$Res>
    implements $CreatedInviteeModelCopyWith<$Res> {
  _$CreatedInviteeModelCopyWithImpl(this._self, this._then);

  final CreatedInviteeModel _self;
  final $Res Function(CreatedInviteeModel) _then;

/// Create a copy of CreatedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inviteeId = null,Object? fullName = null,}) {
  return _then(_self.copyWith(
inviteeId: null == inviteeId ? _self.inviteeId : inviteeId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedInviteeModel].
extension CreatedInviteeModelPatterns on CreatedInviteeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedInviteeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedInviteeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedInviteeModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatedInviteeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedInviteeModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedInviteeModel() when $default != null:
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
case _CreatedInviteeModel() when $default != null:
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
case _CreatedInviteeModel():
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
case _CreatedInviteeModel() when $default != null:
return $default(_that.inviteeId,_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedInviteeModel implements CreatedInviteeModel {
  const _CreatedInviteeModel({@JsonKey(name: 'invitee_id') required this.inviteeId, @JsonKey(name: 'full_name') required this.fullName});
  factory _CreatedInviteeModel.fromJson(Map<String, dynamic> json) => _$CreatedInviteeModelFromJson(json);

@override@JsonKey(name: 'invitee_id') final  String inviteeId;
@override@JsonKey(name: 'full_name') final  String fullName;

/// Create a copy of CreatedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedInviteeModelCopyWith<_CreatedInviteeModel> get copyWith => __$CreatedInviteeModelCopyWithImpl<_CreatedInviteeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedInviteeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedInviteeModel&&(identical(other.inviteeId, inviteeId) || other.inviteeId == inviteeId)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inviteeId,fullName);

@override
String toString() {
  return 'CreatedInviteeModel(inviteeId: $inviteeId, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$CreatedInviteeModelCopyWith<$Res> implements $CreatedInviteeModelCopyWith<$Res> {
  factory _$CreatedInviteeModelCopyWith(_CreatedInviteeModel value, $Res Function(_CreatedInviteeModel) _then) = __$CreatedInviteeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'invitee_id') String inviteeId,@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class __$CreatedInviteeModelCopyWithImpl<$Res>
    implements _$CreatedInviteeModelCopyWith<$Res> {
  __$CreatedInviteeModelCopyWithImpl(this._self, this._then);

  final _CreatedInviteeModel _self;
  final $Res Function(_CreatedInviteeModel) _then;

/// Create a copy of CreatedInviteeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inviteeId = null,Object? fullName = null,}) {
  return _then(_CreatedInviteeModel(
inviteeId: null == inviteeId ? _self.inviteeId : inviteeId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
