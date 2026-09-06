// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_guest_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteGuestsResponse {

 List<String> get deleted;@JsonKey(name: 'not_found') List<String> get notFound;
/// Create a copy of DeleteGuestsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteGuestsResponseCopyWith<DeleteGuestsResponse> get copyWith => _$DeleteGuestsResponseCopyWithImpl<DeleteGuestsResponse>(this as DeleteGuestsResponse, _$identity);

  /// Serializes this DeleteGuestsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteGuestsResponse&&const DeepCollectionEquality().equals(other.deleted, deleted)&&const DeepCollectionEquality().equals(other.notFound, notFound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(deleted),const DeepCollectionEquality().hash(notFound));

@override
String toString() {
  return 'DeleteGuestsResponse(deleted: $deleted, notFound: $notFound)';
}


}

/// @nodoc
abstract mixin class $DeleteGuestsResponseCopyWith<$Res>  {
  factory $DeleteGuestsResponseCopyWith(DeleteGuestsResponse value, $Res Function(DeleteGuestsResponse) _then) = _$DeleteGuestsResponseCopyWithImpl;
@useResult
$Res call({
 List<String> deleted,@JsonKey(name: 'not_found') List<String> notFound
});




}
/// @nodoc
class _$DeleteGuestsResponseCopyWithImpl<$Res>
    implements $DeleteGuestsResponseCopyWith<$Res> {
  _$DeleteGuestsResponseCopyWithImpl(this._self, this._then);

  final DeleteGuestsResponse _self;
  final $Res Function(DeleteGuestsResponse) _then;

/// Create a copy of DeleteGuestsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deleted = null,Object? notFound = null,}) {
  return _then(_self.copyWith(
deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as List<String>,notFound: null == notFound ? _self.notFound : notFound // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteGuestsResponse].
extension DeleteGuestsResponsePatterns on DeleteGuestsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteGuestsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteGuestsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteGuestsResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeleteGuestsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteGuestsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteGuestsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> deleted, @JsonKey(name: 'not_found')  List<String> notFound)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteGuestsResponse() when $default != null:
return $default(_that.deleted,_that.notFound);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> deleted, @JsonKey(name: 'not_found')  List<String> notFound)  $default,) {final _that = this;
switch (_that) {
case _DeleteGuestsResponse():
return $default(_that.deleted,_that.notFound);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> deleted, @JsonKey(name: 'not_found')  List<String> notFound)?  $default,) {final _that = this;
switch (_that) {
case _DeleteGuestsResponse() when $default != null:
return $default(_that.deleted,_that.notFound);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteGuestsResponse implements DeleteGuestsResponse {
  const _DeleteGuestsResponse({required final  List<String> deleted, @JsonKey(name: 'not_found') required final  List<String> notFound}): _deleted = deleted,_notFound = notFound;
  factory _DeleteGuestsResponse.fromJson(Map<String, dynamic> json) => _$DeleteGuestsResponseFromJson(json);

 final  List<String> _deleted;
@override List<String> get deleted {
  if (_deleted is EqualUnmodifiableListView) return _deleted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deleted);
}

 final  List<String> _notFound;
@override@JsonKey(name: 'not_found') List<String> get notFound {
  if (_notFound is EqualUnmodifiableListView) return _notFound;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notFound);
}


/// Create a copy of DeleteGuestsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteGuestsResponseCopyWith<_DeleteGuestsResponse> get copyWith => __$DeleteGuestsResponseCopyWithImpl<_DeleteGuestsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteGuestsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteGuestsResponse&&const DeepCollectionEquality().equals(other._deleted, _deleted)&&const DeepCollectionEquality().equals(other._notFound, _notFound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_deleted),const DeepCollectionEquality().hash(_notFound));

@override
String toString() {
  return 'DeleteGuestsResponse(deleted: $deleted, notFound: $notFound)';
}


}

/// @nodoc
abstract mixin class _$DeleteGuestsResponseCopyWith<$Res> implements $DeleteGuestsResponseCopyWith<$Res> {
  factory _$DeleteGuestsResponseCopyWith(_DeleteGuestsResponse value, $Res Function(_DeleteGuestsResponse) _then) = __$DeleteGuestsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> deleted,@JsonKey(name: 'not_found') List<String> notFound
});




}
/// @nodoc
class __$DeleteGuestsResponseCopyWithImpl<$Res>
    implements _$DeleteGuestsResponseCopyWith<$Res> {
  __$DeleteGuestsResponseCopyWithImpl(this._self, this._then);

  final _DeleteGuestsResponse _self;
  final $Res Function(_DeleteGuestsResponse) _then;

/// Create a copy of DeleteGuestsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deleted = null,Object? notFound = null,}) {
  return _then(_DeleteGuestsResponse(
deleted: null == deleted ? _self._deleted : deleted // ignore: cast_nullable_to_non_nullable
as List<String>,notFound: null == notFound ? _self._notFound : notFound // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
