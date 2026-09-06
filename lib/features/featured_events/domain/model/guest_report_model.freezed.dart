// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuestReportModel {

@JsonKey(name: 'total_invitees') int get totalInvitees;@JsonKey(name: 'not_sent') int get notSent;@JsonKey(name: 'pending') int get pending;@JsonKey(name: 'confirmed') int get confirmed;@JsonKey(name: 'declined') int get declined;@JsonKey(name: 'failed') int get failed;@JsonKey(name: 'scanned_count') int get scannedCount;
/// Create a copy of GuestReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestReportModelCopyWith<GuestReportModel> get copyWith => _$GuestReportModelCopyWithImpl<GuestReportModel>(this as GuestReportModel, _$identity);

  /// Serializes this GuestReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestReportModel&&(identical(other.totalInvitees, totalInvitees) || other.totalInvitees == totalInvitees)&&(identical(other.notSent, notSent) || other.notSent == notSent)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.declined, declined) || other.declined == declined)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.scannedCount, scannedCount) || other.scannedCount == scannedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalInvitees,notSent,pending,confirmed,declined,failed,scannedCount);

@override
String toString() {
  return 'GuestReportModel(totalInvitees: $totalInvitees, notSent: $notSent, pending: $pending, confirmed: $confirmed, declined: $declined, failed: $failed, scannedCount: $scannedCount)';
}


}

/// @nodoc
abstract mixin class $GuestReportModelCopyWith<$Res>  {
  factory $GuestReportModelCopyWith(GuestReportModel value, $Res Function(GuestReportModel) _then) = _$GuestReportModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_invitees') int totalInvitees,@JsonKey(name: 'not_sent') int notSent,@JsonKey(name: 'pending') int pending,@JsonKey(name: 'confirmed') int confirmed,@JsonKey(name: 'declined') int declined,@JsonKey(name: 'failed') int failed,@JsonKey(name: 'scanned_count') int scannedCount
});




}
/// @nodoc
class _$GuestReportModelCopyWithImpl<$Res>
    implements $GuestReportModelCopyWith<$Res> {
  _$GuestReportModelCopyWithImpl(this._self, this._then);

  final GuestReportModel _self;
  final $Res Function(GuestReportModel) _then;

/// Create a copy of GuestReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalInvitees = null,Object? notSent = null,Object? pending = null,Object? confirmed = null,Object? declined = null,Object? failed = null,Object? scannedCount = null,}) {
  return _then(_self.copyWith(
totalInvitees: null == totalInvitees ? _self.totalInvitees : totalInvitees // ignore: cast_nullable_to_non_nullable
as int,notSent: null == notSent ? _self.notSent : notSent // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as int,declined: null == declined ? _self.declined : declined // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,scannedCount: null == scannedCount ? _self.scannedCount : scannedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GuestReportModel].
extension GuestReportModelPatterns on GuestReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuestReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuestReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuestReportModel value)  $default,){
final _that = this;
switch (_that) {
case _GuestReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuestReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _GuestReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_invitees')  int totalInvitees, @JsonKey(name: 'not_sent')  int notSent, @JsonKey(name: 'pending')  int pending, @JsonKey(name: 'confirmed')  int confirmed, @JsonKey(name: 'declined')  int declined, @JsonKey(name: 'failed')  int failed, @JsonKey(name: 'scanned_count')  int scannedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuestReportModel() when $default != null:
return $default(_that.totalInvitees,_that.notSent,_that.pending,_that.confirmed,_that.declined,_that.failed,_that.scannedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_invitees')  int totalInvitees, @JsonKey(name: 'not_sent')  int notSent, @JsonKey(name: 'pending')  int pending, @JsonKey(name: 'confirmed')  int confirmed, @JsonKey(name: 'declined')  int declined, @JsonKey(name: 'failed')  int failed, @JsonKey(name: 'scanned_count')  int scannedCount)  $default,) {final _that = this;
switch (_that) {
case _GuestReportModel():
return $default(_that.totalInvitees,_that.notSent,_that.pending,_that.confirmed,_that.declined,_that.failed,_that.scannedCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_invitees')  int totalInvitees, @JsonKey(name: 'not_sent')  int notSent, @JsonKey(name: 'pending')  int pending, @JsonKey(name: 'confirmed')  int confirmed, @JsonKey(name: 'declined')  int declined, @JsonKey(name: 'failed')  int failed, @JsonKey(name: 'scanned_count')  int scannedCount)?  $default,) {final _that = this;
switch (_that) {
case _GuestReportModel() when $default != null:
return $default(_that.totalInvitees,_that.notSent,_that.pending,_that.confirmed,_that.declined,_that.failed,_that.scannedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuestReportModel implements GuestReportModel {
  const _GuestReportModel({@JsonKey(name: 'total_invitees') required this.totalInvitees, @JsonKey(name: 'not_sent') required this.notSent, @JsonKey(name: 'pending') required this.pending, @JsonKey(name: 'confirmed') required this.confirmed, @JsonKey(name: 'declined') required this.declined, @JsonKey(name: 'failed') required this.failed, @JsonKey(name: 'scanned_count') required this.scannedCount});
  factory _GuestReportModel.fromJson(Map<String, dynamic> json) => _$GuestReportModelFromJson(json);

@override@JsonKey(name: 'total_invitees') final  int totalInvitees;
@override@JsonKey(name: 'not_sent') final  int notSent;
@override@JsonKey(name: 'pending') final  int pending;
@override@JsonKey(name: 'confirmed') final  int confirmed;
@override@JsonKey(name: 'declined') final  int declined;
@override@JsonKey(name: 'failed') final  int failed;
@override@JsonKey(name: 'scanned_count') final  int scannedCount;

/// Create a copy of GuestReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuestReportModelCopyWith<_GuestReportModel> get copyWith => __$GuestReportModelCopyWithImpl<_GuestReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuestReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuestReportModel&&(identical(other.totalInvitees, totalInvitees) || other.totalInvitees == totalInvitees)&&(identical(other.notSent, notSent) || other.notSent == notSent)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.declined, declined) || other.declined == declined)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.scannedCount, scannedCount) || other.scannedCount == scannedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalInvitees,notSent,pending,confirmed,declined,failed,scannedCount);

@override
String toString() {
  return 'GuestReportModel(totalInvitees: $totalInvitees, notSent: $notSent, pending: $pending, confirmed: $confirmed, declined: $declined, failed: $failed, scannedCount: $scannedCount)';
}


}

/// @nodoc
abstract mixin class _$GuestReportModelCopyWith<$Res> implements $GuestReportModelCopyWith<$Res> {
  factory _$GuestReportModelCopyWith(_GuestReportModel value, $Res Function(_GuestReportModel) _then) = __$GuestReportModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_invitees') int totalInvitees,@JsonKey(name: 'not_sent') int notSent,@JsonKey(name: 'pending') int pending,@JsonKey(name: 'confirmed') int confirmed,@JsonKey(name: 'declined') int declined,@JsonKey(name: 'failed') int failed,@JsonKey(name: 'scanned_count') int scannedCount
});




}
/// @nodoc
class __$GuestReportModelCopyWithImpl<$Res>
    implements _$GuestReportModelCopyWith<$Res> {
  __$GuestReportModelCopyWithImpl(this._self, this._then);

  final _GuestReportModel _self;
  final $Res Function(_GuestReportModel) _then;

/// Create a copy of GuestReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalInvitees = null,Object? notSent = null,Object? pending = null,Object? confirmed = null,Object? declined = null,Object? failed = null,Object? scannedCount = null,}) {
  return _then(_GuestReportModel(
totalInvitees: null == totalInvitees ? _self.totalInvitees : totalInvitees // ignore: cast_nullable_to_non_nullable
as int,notSent: null == notSent ? _self.notSent : notSent // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as int,declined: null == declined ? _self.declined : declined // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,scannedCount: null == scannedCount ? _self.scannedCount : scannedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
