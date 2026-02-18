// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_qr_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScanQrResponse {
  @JsonKey(name: 'invitee_id')
  String get inviteeId;
  @JsonKey(name: 'full_name')
  String get fullName;
  @JsonKey(name: 'occasion_id')
  String get occasionId;
  @JsonKey(name: 'checked_in')
  int get checkedIn;
  @JsonKey(name: 'max_allowed')
  int get maxAllowed;
  @JsonKey(name: 'remaining_checkins')
  int get remainingCheckins;

  /// Create a copy of ScanQrResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScanQrResponseCopyWith<ScanQrResponse> get copyWith =>
      _$ScanQrResponseCopyWithImpl<ScanQrResponse>(
          this as ScanQrResponse, _$identity);

  /// Serializes this ScanQrResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScanQrResponse &&
            (identical(other.inviteeId, inviteeId) ||
                other.inviteeId == inviteeId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.occasionId, occasionId) ||
                other.occasionId == occasionId) &&
            (identical(other.checkedIn, checkedIn) ||
                other.checkedIn == checkedIn) &&
            (identical(other.maxAllowed, maxAllowed) ||
                other.maxAllowed == maxAllowed) &&
            (identical(other.remainingCheckins, remainingCheckins) ||
                other.remainingCheckins == remainingCheckins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteeId, fullName, occasionId,
      checkedIn, maxAllowed, remainingCheckins);

  @override
  String toString() {
    return 'ScanQrResponse(inviteeId: $inviteeId, fullName: $fullName, occasionId: $occasionId, checkedIn: $checkedIn, maxAllowed: $maxAllowed, remainingCheckins: $remainingCheckins)';
  }
}

/// @nodoc
abstract mixin class $ScanQrResponseCopyWith<$Res> {
  factory $ScanQrResponseCopyWith(
          ScanQrResponse value, $Res Function(ScanQrResponse) _then) =
      _$ScanQrResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'invitee_id') String inviteeId,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'occasion_id') String occasionId,
      @JsonKey(name: 'checked_in') int checkedIn,
      @JsonKey(name: 'max_allowed') int maxAllowed,
      @JsonKey(name: 'remaining_checkins') int remainingCheckins});
}

/// @nodoc
class _$ScanQrResponseCopyWithImpl<$Res>
    implements $ScanQrResponseCopyWith<$Res> {
  _$ScanQrResponseCopyWithImpl(this._self, this._then);

  final ScanQrResponse _self;
  final $Res Function(ScanQrResponse) _then;

  /// Create a copy of ScanQrResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteeId = null,
    Object? fullName = null,
    Object? occasionId = null,
    Object? checkedIn = null,
    Object? maxAllowed = null,
    Object? remainingCheckins = null,
  }) {
    return _then(_self.copyWith(
      inviteeId: null == inviteeId
          ? _self.inviteeId
          : inviteeId // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      occasionId: null == occasionId
          ? _self.occasionId
          : occasionId // ignore: cast_nullable_to_non_nullable
              as String,
      checkedIn: null == checkedIn
          ? _self.checkedIn
          : checkedIn // ignore: cast_nullable_to_non_nullable
              as int,
      maxAllowed: null == maxAllowed
          ? _self.maxAllowed
          : maxAllowed // ignore: cast_nullable_to_non_nullable
              as int,
      remainingCheckins: null == remainingCheckins
          ? _self.remainingCheckins
          : remainingCheckins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ScanQrResponse].
extension ScanQrResponsePatterns on ScanQrResponse {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanQrResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScanQrResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ScanQrResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanQrResponse():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanQrResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanQrResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'invitee_id') String inviteeId,
            @JsonKey(name: 'full_name') String fullName,
            @JsonKey(name: 'occasion_id') String occasionId,
            @JsonKey(name: 'checked_in') int checkedIn,
            @JsonKey(name: 'max_allowed') int maxAllowed,
            @JsonKey(name: 'remaining_checkins') int remainingCheckins)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScanQrResponse() when $default != null:
        return $default(_that.inviteeId, _that.fullName, _that.occasionId,
            _that.checkedIn, _that.maxAllowed, _that.remainingCheckins);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'invitee_id') String inviteeId,
            @JsonKey(name: 'full_name') String fullName,
            @JsonKey(name: 'occasion_id') String occasionId,
            @JsonKey(name: 'checked_in') int checkedIn,
            @JsonKey(name: 'max_allowed') int maxAllowed,
            @JsonKey(name: 'remaining_checkins') int remainingCheckins)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanQrResponse():
        return $default(_that.inviteeId, _that.fullName, _that.occasionId,
            _that.checkedIn, _that.maxAllowed, _that.remainingCheckins);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'invitee_id') String inviteeId,
            @JsonKey(name: 'full_name') String fullName,
            @JsonKey(name: 'occasion_id') String occasionId,
            @JsonKey(name: 'checked_in') int checkedIn,
            @JsonKey(name: 'max_allowed') int maxAllowed,
            @JsonKey(name: 'remaining_checkins') int remainingCheckins)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanQrResponse() when $default != null:
        return $default(_that.inviteeId, _that.fullName, _that.occasionId,
            _that.checkedIn, _that.maxAllowed, _that.remainingCheckins);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ScanQrResponse implements ScanQrResponse {
  const _ScanQrResponse(
      {@JsonKey(name: 'invitee_id') required this.inviteeId,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'occasion_id') required this.occasionId,
      @JsonKey(name: 'checked_in') required this.checkedIn,
      @JsonKey(name: 'max_allowed') required this.maxAllowed,
      @JsonKey(name: 'remaining_checkins') required this.remainingCheckins});
  factory _ScanQrResponse.fromJson(Map<String, dynamic> json) =>
      _$ScanQrResponseFromJson(json);

  @override
  @JsonKey(name: 'invitee_id')
  final String inviteeId;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'occasion_id')
  final String occasionId;
  @override
  @JsonKey(name: 'checked_in')
  final int checkedIn;
  @override
  @JsonKey(name: 'max_allowed')
  final int maxAllowed;
  @override
  @JsonKey(name: 'remaining_checkins')
  final int remainingCheckins;

  /// Create a copy of ScanQrResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScanQrResponseCopyWith<_ScanQrResponse> get copyWith =>
      __$ScanQrResponseCopyWithImpl<_ScanQrResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScanQrResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScanQrResponse &&
            (identical(other.inviteeId, inviteeId) ||
                other.inviteeId == inviteeId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.occasionId, occasionId) ||
                other.occasionId == occasionId) &&
            (identical(other.checkedIn, checkedIn) ||
                other.checkedIn == checkedIn) &&
            (identical(other.maxAllowed, maxAllowed) ||
                other.maxAllowed == maxAllowed) &&
            (identical(other.remainingCheckins, remainingCheckins) ||
                other.remainingCheckins == remainingCheckins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteeId, fullName, occasionId,
      checkedIn, maxAllowed, remainingCheckins);

  @override
  String toString() {
    return 'ScanQrResponse(inviteeId: $inviteeId, fullName: $fullName, occasionId: $occasionId, checkedIn: $checkedIn, maxAllowed: $maxAllowed, remainingCheckins: $remainingCheckins)';
  }
}

/// @nodoc
abstract mixin class _$ScanQrResponseCopyWith<$Res>
    implements $ScanQrResponseCopyWith<$Res> {
  factory _$ScanQrResponseCopyWith(
          _ScanQrResponse value, $Res Function(_ScanQrResponse) _then) =
      __$ScanQrResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'invitee_id') String inviteeId,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'occasion_id') String occasionId,
      @JsonKey(name: 'checked_in') int checkedIn,
      @JsonKey(name: 'max_allowed') int maxAllowed,
      @JsonKey(name: 'remaining_checkins') int remainingCheckins});
}

/// @nodoc
class __$ScanQrResponseCopyWithImpl<$Res>
    implements _$ScanQrResponseCopyWith<$Res> {
  __$ScanQrResponseCopyWithImpl(this._self, this._then);

  final _ScanQrResponse _self;
  final $Res Function(_ScanQrResponse) _then;

  /// Create a copy of ScanQrResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inviteeId = null,
    Object? fullName = null,
    Object? occasionId = null,
    Object? checkedIn = null,
    Object? maxAllowed = null,
    Object? remainingCheckins = null,
  }) {
    return _then(_ScanQrResponse(
      inviteeId: null == inviteeId
          ? _self.inviteeId
          : inviteeId // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      occasionId: null == occasionId
          ? _self.occasionId
          : occasionId // ignore: cast_nullable_to_non_nullable
              as String,
      checkedIn: null == checkedIn
          ? _self.checkedIn
          : checkedIn // ignore: cast_nullable_to_non_nullable
              as int,
      maxAllowed: null == maxAllowed
          ? _self.maxAllowed
          : maxAllowed // ignore: cast_nullable_to_non_nullable
              as int,
      remainingCheckins: null == remainingCheckins
          ? _self.remainingCheckins
          : remainingCheckins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
