// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuestModel {
  @JsonKey(name: 'invitee_id')
  String? get inviteeId;
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'whatsapp_number')
  String? get whatsappNumber;
  @JsonKey(name: 'party_size')
  int? get partySize;
  @JsonKey(name: 'rsvp_status')
  String? get rsvpStatus;
  int get replied;
  @JsonKey(name: 'checkin_count')
  int? get checkinCount;

  /// Create a copy of GuestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuestModelCopyWith<GuestModel> get copyWith =>
      _$GuestModelCopyWithImpl<GuestModel>(this as GuestModel, _$identity);

  /// Serializes this GuestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuestModel &&
            (identical(other.inviteeId, inviteeId) ||
                other.inviteeId == inviteeId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.partySize, partySize) ||
                other.partySize == partySize) &&
            (identical(other.rsvpStatus, rsvpStatus) ||
                other.rsvpStatus == rsvpStatus) &&
            (identical(other.replied, replied) || other.replied == replied) &&
            (identical(other.checkinCount, checkinCount) ||
                other.checkinCount == checkinCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteeId, fullName,
      whatsappNumber, partySize, rsvpStatus, replied, checkinCount);

  @override
  String toString() {
    return 'GuestModel(inviteeId: $inviteeId, fullName: $fullName, whatsappNumber: $whatsappNumber, partySize: $partySize, rsvpStatus: $rsvpStatus, replied: $replied, checkinCount: $checkinCount)';
  }
}

/// @nodoc
abstract mixin class $GuestModelCopyWith<$Res> {
  factory $GuestModelCopyWith(
          GuestModel value, $Res Function(GuestModel) _then) =
      _$GuestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'invitee_id') String? inviteeId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'party_size') int? partySize,
      @JsonKey(name: 'rsvp_status') String? rsvpStatus,
      int replied,
      @JsonKey(name: 'checkin_count') int? checkinCount});
}

/// @nodoc
class _$GuestModelCopyWithImpl<$Res> implements $GuestModelCopyWith<$Res> {
  _$GuestModelCopyWithImpl(this._self, this._then);

  final GuestModel _self;
  final $Res Function(GuestModel) _then;

  /// Create a copy of GuestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteeId = freezed,
    Object? fullName = freezed,
    Object? whatsappNumber = freezed,
    Object? partySize = freezed,
    Object? rsvpStatus = freezed,
    Object? replied = null,
    Object? checkinCount = freezed,
  }) {
    return _then(_self.copyWith(
      inviteeId: freezed == inviteeId
          ? _self.inviteeId
          : inviteeId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNumber: freezed == whatsappNumber
          ? _self.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      partySize: freezed == partySize
          ? _self.partySize
          : partySize // ignore: cast_nullable_to_non_nullable
              as int?,
      rsvpStatus: freezed == rsvpStatus
          ? _self.rsvpStatus
          : rsvpStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      replied: null == replied
          ? _self.replied
          : replied // ignore: cast_nullable_to_non_nullable
              as int,
      checkinCount: freezed == checkinCount
          ? _self.checkinCount
          : checkinCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GuestModel].
extension GuestModelPatterns on GuestModel {
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
    TResult Function(_GuestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuestModel() when $default != null:
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
    TResult Function(_GuestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestModel():
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
    TResult? Function(_GuestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestModel() when $default != null:
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
            @JsonKey(name: 'invitee_id') String? inviteeId,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
            @JsonKey(name: 'party_size') int? partySize,
            @JsonKey(name: 'rsvp_status') String? rsvpStatus,
            int replied,
            @JsonKey(name: 'checkin_count') int? checkinCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuestModel() when $default != null:
        return $default(
            _that.inviteeId,
            _that.fullName,
            _that.whatsappNumber,
            _that.partySize,
            _that.rsvpStatus,
            _that.replied,
            _that.checkinCount);
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
            @JsonKey(name: 'invitee_id') String? inviteeId,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
            @JsonKey(name: 'party_size') int? partySize,
            @JsonKey(name: 'rsvp_status') String? rsvpStatus,
            int replied,
            @JsonKey(name: 'checkin_count') int? checkinCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestModel():
        return $default(
            _that.inviteeId,
            _that.fullName,
            _that.whatsappNumber,
            _that.partySize,
            _that.rsvpStatus,
            _that.replied,
            _that.checkinCount);
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
            @JsonKey(name: 'invitee_id') String? inviteeId,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
            @JsonKey(name: 'party_size') int? partySize,
            @JsonKey(name: 'rsvp_status') String? rsvpStatus,
            int replied,
            @JsonKey(name: 'checkin_count') int? checkinCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestModel() when $default != null:
        return $default(
            _that.inviteeId,
            _that.fullName,
            _that.whatsappNumber,
            _that.partySize,
            _that.rsvpStatus,
            _that.replied,
            _that.checkinCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuestModel implements GuestModel {
  const _GuestModel(
      {@JsonKey(name: 'invitee_id') required this.inviteeId,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'whatsapp_number') required this.whatsappNumber,
      @JsonKey(name: 'party_size') this.partySize = 1,
      @JsonKey(name: 'rsvp_status') required this.rsvpStatus,
      this.replied = 0,
      @JsonKey(name: 'checkin_count') this.checkinCount = 0});
  factory _GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);

  @override
  @JsonKey(name: 'invitee_id')
  final String? inviteeId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'whatsapp_number')
  final String? whatsappNumber;
  @override
  @JsonKey(name: 'party_size')
  final int? partySize;
  @override
  @JsonKey(name: 'rsvp_status')
  final String? rsvpStatus;
  @override
  @JsonKey()
  final int replied;
  @override
  @JsonKey(name: 'checkin_count')
  final int? checkinCount;

  /// Create a copy of GuestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuestModelCopyWith<_GuestModel> get copyWith =>
      __$GuestModelCopyWithImpl<_GuestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuestModel &&
            (identical(other.inviteeId, inviteeId) ||
                other.inviteeId == inviteeId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.partySize, partySize) ||
                other.partySize == partySize) &&
            (identical(other.rsvpStatus, rsvpStatus) ||
                other.rsvpStatus == rsvpStatus) &&
            (identical(other.replied, replied) || other.replied == replied) &&
            (identical(other.checkinCount, checkinCount) ||
                other.checkinCount == checkinCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteeId, fullName,
      whatsappNumber, partySize, rsvpStatus, replied, checkinCount);

  @override
  String toString() {
    return 'GuestModel(inviteeId: $inviteeId, fullName: $fullName, whatsappNumber: $whatsappNumber, partySize: $partySize, rsvpStatus: $rsvpStatus, replied: $replied, checkinCount: $checkinCount)';
  }
}

/// @nodoc
abstract mixin class _$GuestModelCopyWith<$Res>
    implements $GuestModelCopyWith<$Res> {
  factory _$GuestModelCopyWith(
          _GuestModel value, $Res Function(_GuestModel) _then) =
      __$GuestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'invitee_id') String? inviteeId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'party_size') int? partySize,
      @JsonKey(name: 'rsvp_status') String? rsvpStatus,
      int replied,
      @JsonKey(name: 'checkin_count') int? checkinCount});
}

/// @nodoc
class __$GuestModelCopyWithImpl<$Res> implements _$GuestModelCopyWith<$Res> {
  __$GuestModelCopyWithImpl(this._self, this._then);

  final _GuestModel _self;
  final $Res Function(_GuestModel) _then;

  /// Create a copy of GuestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inviteeId = freezed,
    Object? fullName = freezed,
    Object? whatsappNumber = freezed,
    Object? partySize = freezed,
    Object? rsvpStatus = freezed,
    Object? replied = null,
    Object? checkinCount = freezed,
  }) {
    return _then(_GuestModel(
      inviteeId: freezed == inviteeId
          ? _self.inviteeId
          : inviteeId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNumber: freezed == whatsappNumber
          ? _self.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      partySize: freezed == partySize
          ? _self.partySize
          : partySize // ignore: cast_nullable_to_non_nullable
              as int?,
      rsvpStatus: freezed == rsvpStatus
          ? _self.rsvpStatus
          : rsvpStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      replied: null == replied
          ? _self.replied
          : replied // ignore: cast_nullable_to_non_nullable
              as int,
      checkinCount: freezed == checkinCount
          ? _self.checkinCount
          : checkinCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
