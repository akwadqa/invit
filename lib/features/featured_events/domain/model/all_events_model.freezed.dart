// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllEventsModel {
  List<EventModel> get events;
  @JsonKey(name: 'guest_report')
  GuestReportModel get guestReport;

  /// Create a copy of AllEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllEventsModelCopyWith<AllEventsModel> get copyWith =>
      _$AllEventsModelCopyWithImpl<AllEventsModel>(
          this as AllEventsModel, _$identity);

  /// Serializes this AllEventsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllEventsModel &&
            const DeepCollectionEquality().equals(other.events, events) &&
            (identical(other.guestReport, guestReport) ||
                other.guestReport == guestReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(events), guestReport);

  @override
  String toString() {
    return 'AllEventsModel(events: $events, guestReport: $guestReport)';
  }
}

/// @nodoc
abstract mixin class $AllEventsModelCopyWith<$Res> {
  factory $AllEventsModelCopyWith(
          AllEventsModel value, $Res Function(AllEventsModel) _then) =
      _$AllEventsModelCopyWithImpl;
  @useResult
  $Res call(
      {List<EventModel> events,
      @JsonKey(name: 'guest_report') GuestReportModel guestReport});

  $GuestReportModelCopyWith<$Res> get guestReport;
}

/// @nodoc
class _$AllEventsModelCopyWithImpl<$Res>
    implements $AllEventsModelCopyWith<$Res> {
  _$AllEventsModelCopyWithImpl(this._self, this._then);

  final AllEventsModel _self;
  final $Res Function(AllEventsModel) _then;

  /// Create a copy of AllEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? guestReport = null,
  }) {
    return _then(_self.copyWith(
      events: null == events
          ? _self.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      guestReport: null == guestReport
          ? _self.guestReport
          : guestReport // ignore: cast_nullable_to_non_nullable
              as GuestReportModel,
    ));
  }

  /// Create a copy of AllEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestReportModelCopyWith<$Res> get guestReport {
    return $GuestReportModelCopyWith<$Res>(_self.guestReport, (value) {
      return _then(_self.copyWith(guestReport: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AllEventsModel].
extension AllEventsModelPatterns on AllEventsModel {
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
    TResult Function(_AllEventsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllEventsModel() when $default != null:
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
    TResult Function(_AllEventsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllEventsModel():
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
    TResult? Function(_AllEventsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllEventsModel() when $default != null:
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
    TResult Function(List<EventModel> events,
            @JsonKey(name: 'guest_report') GuestReportModel guestReport)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllEventsModel() when $default != null:
        return $default(_that.events, _that.guestReport);
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
    TResult Function(List<EventModel> events,
            @JsonKey(name: 'guest_report') GuestReportModel guestReport)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllEventsModel():
        return $default(_that.events, _that.guestReport);
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
    TResult? Function(List<EventModel> events,
            @JsonKey(name: 'guest_report') GuestReportModel guestReport)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllEventsModel() when $default != null:
        return $default(_that.events, _that.guestReport);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AllEventsModel implements AllEventsModel {
  const _AllEventsModel(
      {required final List<EventModel> events,
      @JsonKey(name: 'guest_report') required this.guestReport})
      : _events = events;
  factory _AllEventsModel.fromJson(Map<String, dynamic> json) =>
      _$AllEventsModelFromJson(json);

  final List<EventModel> _events;
  @override
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  @JsonKey(name: 'guest_report')
  final GuestReportModel guestReport;

  /// Create a copy of AllEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllEventsModelCopyWith<_AllEventsModel> get copyWith =>
      __$AllEventsModelCopyWithImpl<_AllEventsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllEventsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllEventsModel &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.guestReport, guestReport) ||
                other.guestReport == guestReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_events), guestReport);

  @override
  String toString() {
    return 'AllEventsModel(events: $events, guestReport: $guestReport)';
  }
}

/// @nodoc
abstract mixin class _$AllEventsModelCopyWith<$Res>
    implements $AllEventsModelCopyWith<$Res> {
  factory _$AllEventsModelCopyWith(
          _AllEventsModel value, $Res Function(_AllEventsModel) _then) =
      __$AllEventsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<EventModel> events,
      @JsonKey(name: 'guest_report') GuestReportModel guestReport});

  @override
  $GuestReportModelCopyWith<$Res> get guestReport;
}

/// @nodoc
class __$AllEventsModelCopyWithImpl<$Res>
    implements _$AllEventsModelCopyWith<$Res> {
  __$AllEventsModelCopyWithImpl(this._self, this._then);

  final _AllEventsModel _self;
  final $Res Function(_AllEventsModel) _then;

  /// Create a copy of AllEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? events = null,
    Object? guestReport = null,
  }) {
    return _then(_AllEventsModel(
      events: null == events
          ? _self._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      guestReport: null == guestReport
          ? _self.guestReport
          : guestReport // ignore: cast_nullable_to_non_nullable
              as GuestReportModel,
    ));
  }

  /// Create a copy of AllEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestReportModelCopyWith<$Res> get guestReport {
    return $GuestReportModelCopyWith<$Res>(_self.guestReport, (value) {
      return _then(_self.copyWith(guestReport: value));
    });
  }
}

// dart format on
