// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventDetailsModel {
  @JsonKey(name: 'occasion_id')
  String get occasionId;
  String get title;
  String? get date;
  String? get time;
  @JsonKey(name: 'map_link')
  String get mapLink;
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @JsonKey(name: 'invite_template')
  String? get inviteTemplate;
  @JsonKey(name: 'confirmed_template')
  String? get confirmedTemplate;
  @JsonKey(name: 'declined_template')
  String? get declinedTemplate;
  String get status;

  /// 👇 HERE is the guests list
  List<GuestModel> get guests;
  @JsonKey(name: 'guest_report')
  GuestReportModel? get guestReport;

  /// Create a copy of EventDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventDetailsModelCopyWith<EventDetailsModel> get copyWith =>
      _$EventDetailsModelCopyWithImpl<EventDetailsModel>(
          this as EventDetailsModel, _$identity);

  /// Serializes this EventDetailsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventDetailsModel &&
            (identical(other.occasionId, occasionId) ||
                other.occasionId == occasionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.mapLink, mapLink) || other.mapLink == mapLink) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.inviteTemplate, inviteTemplate) ||
                other.inviteTemplate == inviteTemplate) &&
            (identical(other.confirmedTemplate, confirmedTemplate) ||
                other.confirmedTemplate == confirmedTemplate) &&
            (identical(other.declinedTemplate, declinedTemplate) ||
                other.declinedTemplate == declinedTemplate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.guests, guests) &&
            (identical(other.guestReport, guestReport) ||
                other.guestReport == guestReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      occasionId,
      title,
      date,
      time,
      mapLink,
      imageUrl,
      inviteTemplate,
      confirmedTemplate,
      declinedTemplate,
      status,
      const DeepCollectionEquality().hash(guests),
      guestReport);

  @override
  String toString() {
    return 'EventDetailsModel(occasionId: $occasionId, title: $title, date: $date, time: $time, mapLink: $mapLink, imageUrl: $imageUrl, inviteTemplate: $inviteTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, status: $status, guests: $guests, guestReport: $guestReport)';
  }
}

/// @nodoc
abstract mixin class $EventDetailsModelCopyWith<$Res> {
  factory $EventDetailsModelCopyWith(
          EventDetailsModel value, $Res Function(EventDetailsModel) _then) =
      _$EventDetailsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'occasion_id') String occasionId,
      String title,
      String? date,
      String? time,
      @JsonKey(name: 'map_link') String mapLink,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'invite_template') String? inviteTemplate,
      @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
      @JsonKey(name: 'declined_template') String? declinedTemplate,
      String status,
      List<GuestModel> guests,
      @JsonKey(name: 'guest_report') GuestReportModel? guestReport});

  $GuestReportModelCopyWith<$Res>? get guestReport;
}

/// @nodoc
class _$EventDetailsModelCopyWithImpl<$Res>
    implements $EventDetailsModelCopyWith<$Res> {
  _$EventDetailsModelCopyWithImpl(this._self, this._then);

  final EventDetailsModel _self;
  final $Res Function(EventDetailsModel) _then;

  /// Create a copy of EventDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occasionId = null,
    Object? title = null,
    Object? date = freezed,
    Object? time = freezed,
    Object? mapLink = null,
    Object? imageUrl = null,
    Object? inviteTemplate = freezed,
    Object? confirmedTemplate = freezed,
    Object? declinedTemplate = freezed,
    Object? status = null,
    Object? guests = null,
    Object? guestReport = freezed,
  }) {
    return _then(_self.copyWith(
      occasionId: null == occasionId
          ? _self.occasionId
          : occasionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLink: null == mapLink
          ? _self.mapLink
          : mapLink // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      inviteTemplate: freezed == inviteTemplate
          ? _self.inviteTemplate
          : inviteTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmedTemplate: freezed == confirmedTemplate
          ? _self.confirmedTemplate
          : confirmedTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      declinedTemplate: freezed == declinedTemplate
          ? _self.declinedTemplate
          : declinedTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      guests: null == guests
          ? _self.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>,
      guestReport: freezed == guestReport
          ? _self.guestReport
          : guestReport // ignore: cast_nullable_to_non_nullable
              as GuestReportModel?,
    ));
  }

  /// Create a copy of EventDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestReportModelCopyWith<$Res>? get guestReport {
    if (_self.guestReport == null) {
      return null;
    }

    return $GuestReportModelCopyWith<$Res>(_self.guestReport!, (value) {
      return _then(_self.copyWith(guestReport: value));
    });
  }
}

/// Adds pattern-matching-related methods to [EventDetailsModel].
extension EventDetailsModelPatterns on EventDetailsModel {
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
    TResult Function(_EventDetailsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventDetailsModel() when $default != null:
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
    TResult Function(_EventDetailsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventDetailsModel():
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
    TResult? Function(_EventDetailsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventDetailsModel() when $default != null:
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
            @JsonKey(name: 'occasion_id') String occasionId,
            String title,
            String? date,
            String? time,
            @JsonKey(name: 'map_link') String mapLink,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            String status,
            List<GuestModel> guests,
            @JsonKey(name: 'guest_report') GuestReportModel? guestReport)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventDetailsModel() when $default != null:
        return $default(
            _that.occasionId,
            _that.title,
            _that.date,
            _that.time,
            _that.mapLink,
            _that.imageUrl,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.status,
            _that.guests,
            _that.guestReport);
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
            @JsonKey(name: 'occasion_id') String occasionId,
            String title,
            String? date,
            String? time,
            @JsonKey(name: 'map_link') String mapLink,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            String status,
            List<GuestModel> guests,
            @JsonKey(name: 'guest_report') GuestReportModel? guestReport)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventDetailsModel():
        return $default(
            _that.occasionId,
            _that.title,
            _that.date,
            _that.time,
            _that.mapLink,
            _that.imageUrl,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.status,
            _that.guests,
            _that.guestReport);
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
            @JsonKey(name: 'occasion_id') String occasionId,
            String title,
            String? date,
            String? time,
            @JsonKey(name: 'map_link') String mapLink,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            String status,
            List<GuestModel> guests,
            @JsonKey(name: 'guest_report') GuestReportModel? guestReport)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventDetailsModel() when $default != null:
        return $default(
            _that.occasionId,
            _that.title,
            _that.date,
            _that.time,
            _that.mapLink,
            _that.imageUrl,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.status,
            _that.guests,
            _that.guestReport);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EventDetailsModel implements EventDetailsModel {
  const _EventDetailsModel(
      {@JsonKey(name: 'occasion_id') required this.occasionId,
      required this.title,
      this.date,
      this.time,
      @JsonKey(name: 'map_link') required this.mapLink,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'invite_template') this.inviteTemplate,
      @JsonKey(name: 'confirmed_template') this.confirmedTemplate,
      @JsonKey(name: 'declined_template') this.declinedTemplate,
      required this.status,
      final List<GuestModel> guests = const <GuestModel>[],
      @JsonKey(name: 'guest_report') this.guestReport})
      : _guests = guests;
  factory _EventDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'occasion_id')
  final String occasionId;
  @override
  final String title;
  @override
  final String? date;
  @override
  final String? time;
  @override
  @JsonKey(name: 'map_link')
  final String mapLink;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'invite_template')
  final String? inviteTemplate;
  @override
  @JsonKey(name: 'confirmed_template')
  final String? confirmedTemplate;
  @override
  @JsonKey(name: 'declined_template')
  final String? declinedTemplate;
  @override
  final String status;

  /// 👇 HERE is the guests list
  final List<GuestModel> _guests;

  /// 👇 HERE is the guests list
  @override
  @JsonKey()
  List<GuestModel> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  @JsonKey(name: 'guest_report')
  final GuestReportModel? guestReport;

  /// Create a copy of EventDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventDetailsModelCopyWith<_EventDetailsModel> get copyWith =>
      __$EventDetailsModelCopyWithImpl<_EventDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EventDetailsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventDetailsModel &&
            (identical(other.occasionId, occasionId) ||
                other.occasionId == occasionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.mapLink, mapLink) || other.mapLink == mapLink) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.inviteTemplate, inviteTemplate) ||
                other.inviteTemplate == inviteTemplate) &&
            (identical(other.confirmedTemplate, confirmedTemplate) ||
                other.confirmedTemplate == confirmedTemplate) &&
            (identical(other.declinedTemplate, declinedTemplate) ||
                other.declinedTemplate == declinedTemplate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._guests, _guests) &&
            (identical(other.guestReport, guestReport) ||
                other.guestReport == guestReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      occasionId,
      title,
      date,
      time,
      mapLink,
      imageUrl,
      inviteTemplate,
      confirmedTemplate,
      declinedTemplate,
      status,
      const DeepCollectionEquality().hash(_guests),
      guestReport);

  @override
  String toString() {
    return 'EventDetailsModel(occasionId: $occasionId, title: $title, date: $date, time: $time, mapLink: $mapLink, imageUrl: $imageUrl, inviteTemplate: $inviteTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, status: $status, guests: $guests, guestReport: $guestReport)';
  }
}

/// @nodoc
abstract mixin class _$EventDetailsModelCopyWith<$Res>
    implements $EventDetailsModelCopyWith<$Res> {
  factory _$EventDetailsModelCopyWith(
          _EventDetailsModel value, $Res Function(_EventDetailsModel) _then) =
      __$EventDetailsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'occasion_id') String occasionId,
      String title,
      String? date,
      String? time,
      @JsonKey(name: 'map_link') String mapLink,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'invite_template') String? inviteTemplate,
      @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
      @JsonKey(name: 'declined_template') String? declinedTemplate,
      String status,
      List<GuestModel> guests,
      @JsonKey(name: 'guest_report') GuestReportModel? guestReport});

  @override
  $GuestReportModelCopyWith<$Res>? get guestReport;
}

/// @nodoc
class __$EventDetailsModelCopyWithImpl<$Res>
    implements _$EventDetailsModelCopyWith<$Res> {
  __$EventDetailsModelCopyWithImpl(this._self, this._then);

  final _EventDetailsModel _self;
  final $Res Function(_EventDetailsModel) _then;

  /// Create a copy of EventDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? occasionId = null,
    Object? title = null,
    Object? date = freezed,
    Object? time = freezed,
    Object? mapLink = null,
    Object? imageUrl = null,
    Object? inviteTemplate = freezed,
    Object? confirmedTemplate = freezed,
    Object? declinedTemplate = freezed,
    Object? status = null,
    Object? guests = null,
    Object? guestReport = freezed,
  }) {
    return _then(_EventDetailsModel(
      occasionId: null == occasionId
          ? _self.occasionId
          : occasionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLink: null == mapLink
          ? _self.mapLink
          : mapLink // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      inviteTemplate: freezed == inviteTemplate
          ? _self.inviteTemplate
          : inviteTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmedTemplate: freezed == confirmedTemplate
          ? _self.confirmedTemplate
          : confirmedTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      declinedTemplate: freezed == declinedTemplate
          ? _self.declinedTemplate
          : declinedTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      guests: null == guests
          ? _self._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>,
      guestReport: freezed == guestReport
          ? _self.guestReport
          : guestReport // ignore: cast_nullable_to_non_nullable
              as GuestReportModel?,
    ));
  }

  /// Create a copy of EventDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestReportModelCopyWith<$Res>? get guestReport {
    if (_self.guestReport == null) {
      return null;
    }

    return $GuestReportModelCopyWith<$Res>(_self.guestReport!, (value) {
      return _then(_self.copyWith(guestReport: value));
    });
  }
}

// dart format on
