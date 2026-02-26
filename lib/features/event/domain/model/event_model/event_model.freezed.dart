// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventModel {
  @JsonKey(name: 'event_id')
  String? get eventId;
  @JsonKey(name: 'date_time')
  String? get dateTime;
  String? get title;
  String? get type;
  String? get language;
  String? get role;
  @JsonKey(name: 'longitude')
  String? get mapLongitude;
  @JsonKey(name: 'latitude')
  String? get mapLatitude;
  @JsonKey(name: 'map_link')
  String? get mapLink;
  @JsonKey(name: 'location_name')
  String? get locationName;
  @JsonKey(name: 'show_qr')
  int? get showQr;
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @JsonKey(includeFromJson: false)
  File? get image;
  @JsonKey(name: 'invite_template')
  String? get inviteTemplate;
  @JsonKey(name: 'confirmed_template')
  String? get confirmedTemplate;
  @JsonKey(name: 'declined_template')
  String? get declinedTemplate;
  @JsonKey(name: 'workflow_state')
  String? get workflowState;
  @JsonKey(name: 'is_featured')
  int? get isFeatured;
  String?
      get status; // @JsonKey(name: 'guest_report') GuestReportModel? guestReport,
  @JsonKey(name: 'guest_list')
  List<GuestModel>? get guestList;
  @JsonKey(name: 'guest_report')
  GuestReportModel? get guestReport;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<EventModel> get copyWith =>
      _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventModel &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.mapLongitude, mapLongitude) ||
                other.mapLongitude == mapLongitude) &&
            (identical(other.mapLatitude, mapLatitude) ||
                other.mapLatitude == mapLatitude) &&
            (identical(other.mapLink, mapLink) || other.mapLink == mapLink) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.showQr, showQr) || other.showQr == showQr) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.inviteTemplate, inviteTemplate) ||
                other.inviteTemplate == inviteTemplate) &&
            (identical(other.confirmedTemplate, confirmedTemplate) ||
                other.confirmedTemplate == confirmedTemplate) &&
            (identical(other.declinedTemplate, declinedTemplate) ||
                other.declinedTemplate == declinedTemplate) &&
            (identical(other.workflowState, workflowState) ||
                other.workflowState == workflowState) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.guestList, guestList) &&
            (identical(other.guestReport, guestReport) ||
                other.guestReport == guestReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        eventId,
        dateTime,
        title,
        type,
        language,
        role,
        mapLongitude,
        mapLatitude,
        mapLink,
        locationName,
        showQr,
        imageUrl,
        image,
        inviteTemplate,
        confirmedTemplate,
        declinedTemplate,
        workflowState,
        isFeatured,
        status,
        const DeepCollectionEquality().hash(guestList),
        guestReport
      ]);

  @override
  String toString() {
    return 'EventModel(eventId: $eventId, dateTime: $dateTime, title: $title, type: $type, language: $language, role: $role, mapLongitude: $mapLongitude, mapLatitude: $mapLatitude, mapLink: $mapLink, locationName: $locationName, showQr: $showQr, imageUrl: $imageUrl, image: $image, inviteTemplate: $inviteTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, workflowState: $workflowState, isFeatured: $isFeatured, status: $status, guestList: $guestList, guestReport: $guestReport)';
  }
}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) _then) =
      _$EventModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'event_id') String? eventId,
      @JsonKey(name: 'date_time') String? dateTime,
      String? title,
      String? type,
      String? language,
      String? role,
      @JsonKey(name: 'longitude') String? mapLongitude,
      @JsonKey(name: 'latitude') String? mapLatitude,
      @JsonKey(name: 'map_link') String? mapLink,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'show_qr') int? showQr,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(includeFromJson: false) File? image,
      @JsonKey(name: 'invite_template') String? inviteTemplate,
      @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
      @JsonKey(name: 'declined_template') String? declinedTemplate,
      @JsonKey(name: 'workflow_state') String? workflowState,
      @JsonKey(name: 'is_featured') int? isFeatured,
      String? status,
      @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
      @JsonKey(name: 'guest_report') GuestReportModel? guestReport});

  $GuestReportModelCopyWith<$Res>? get guestReport;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res> implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._self, this._then);

  final EventModel _self;
  final $Res Function(EventModel) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? dateTime = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? role = freezed,
    Object? mapLongitude = freezed,
    Object? mapLatitude = freezed,
    Object? mapLink = freezed,
    Object? locationName = freezed,
    Object? showQr = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? inviteTemplate = freezed,
    Object? confirmedTemplate = freezed,
    Object? declinedTemplate = freezed,
    Object? workflowState = freezed,
    Object? isFeatured = freezed,
    Object? status = freezed,
    Object? guestList = freezed,
    Object? guestReport = freezed,
  }) {
    return _then(_self.copyWith(
      eventId: freezed == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLongitude: freezed == mapLongitude
          ? _self.mapLongitude
          : mapLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLatitude: freezed == mapLatitude
          ? _self.mapLatitude
          : mapLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLink: freezed == mapLink
          ? _self.mapLink
          : mapLink // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      showQr: freezed == showQr
          ? _self.showQr
          : showQr // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
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
      workflowState: freezed == workflowState
          ? _self.workflowState
          : workflowState // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _self.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      guestList: freezed == guestList
          ? _self.guestList
          : guestList // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>?,
      guestReport: freezed == guestReport
          ? _self.guestReport
          : guestReport // ignore: cast_nullable_to_non_nullable
              as GuestReportModel?,
    ));
  }

  /// Create a copy of EventModel
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

/// Adds pattern-matching-related methods to [EventModel].
extension EventModelPatterns on EventModel {
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
    TResult Function(_EventModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventModel() when $default != null:
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
    TResult Function(_EventModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventModel():
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
    TResult? Function(_EventModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventModel() when $default != null:
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
            @JsonKey(name: 'event_id') String? eventId,
            @JsonKey(name: 'date_time') String? dateTime,
            String? title,
            String? type,
            String? language,
            String? role,
            @JsonKey(name: 'longitude') String? mapLongitude,
            @JsonKey(name: 'latitude') String? mapLatitude,
            @JsonKey(name: 'map_link') String? mapLink,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'show_qr') int? showQr,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(includeFromJson: false) File? image,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            @JsonKey(name: 'workflow_state') String? workflowState,
            @JsonKey(name: 'is_featured') int? isFeatured,
            String? status,
            @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
            @JsonKey(name: 'guest_report') GuestReportModel? guestReport)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventModel() when $default != null:
        return $default(
            _that.eventId,
            _that.dateTime,
            _that.title,
            _that.type,
            _that.language,
            _that.role,
            _that.mapLongitude,
            _that.mapLatitude,
            _that.mapLink,
            _that.locationName,
            _that.showQr,
            _that.imageUrl,
            _that.image,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.workflowState,
            _that.isFeatured,
            _that.status,
            _that.guestList,
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
            @JsonKey(name: 'event_id') String? eventId,
            @JsonKey(name: 'date_time') String? dateTime,
            String? title,
            String? type,
            String? language,
            String? role,
            @JsonKey(name: 'longitude') String? mapLongitude,
            @JsonKey(name: 'latitude') String? mapLatitude,
            @JsonKey(name: 'map_link') String? mapLink,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'show_qr') int? showQr,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(includeFromJson: false) File? image,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            @JsonKey(name: 'workflow_state') String? workflowState,
            @JsonKey(name: 'is_featured') int? isFeatured,
            String? status,
            @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
            @JsonKey(name: 'guest_report') GuestReportModel? guestReport)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventModel():
        return $default(
            _that.eventId,
            _that.dateTime,
            _that.title,
            _that.type,
            _that.language,
            _that.role,
            _that.mapLongitude,
            _that.mapLatitude,
            _that.mapLink,
            _that.locationName,
            _that.showQr,
            _that.imageUrl,
            _that.image,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.workflowState,
            _that.isFeatured,
            _that.status,
            _that.guestList,
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
            @JsonKey(name: 'event_id') String? eventId,
            @JsonKey(name: 'date_time') String? dateTime,
            String? title,
            String? type,
            String? language,
            String? role,
            @JsonKey(name: 'longitude') String? mapLongitude,
            @JsonKey(name: 'latitude') String? mapLatitude,
            @JsonKey(name: 'map_link') String? mapLink,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'show_qr') int? showQr,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(includeFromJson: false) File? image,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            @JsonKey(name: 'workflow_state') String? workflowState,
            @JsonKey(name: 'is_featured') int? isFeatured,
            String? status,
            @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
            @JsonKey(name: 'guest_report') GuestReportModel? guestReport)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventModel() when $default != null:
        return $default(
            _that.eventId,
            _that.dateTime,
            _that.title,
            _that.type,
            _that.language,
            _that.role,
            _that.mapLongitude,
            _that.mapLatitude,
            _that.mapLink,
            _that.locationName,
            _that.showQr,
            _that.imageUrl,
            _that.image,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.workflowState,
            _that.isFeatured,
            _that.status,
            _that.guestList,
            _that.guestReport);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EventModel implements EventModel {
  const _EventModel(
      {@JsonKey(name: 'event_id') this.eventId,
      @JsonKey(name: 'date_time') this.dateTime,
      this.title,
      this.type,
      this.language,
      this.role,
      @JsonKey(name: 'longitude') this.mapLongitude,
      @JsonKey(name: 'latitude') this.mapLatitude,
      @JsonKey(name: 'map_link') this.mapLink,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'show_qr') this.showQr,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(includeFromJson: false) this.image,
      @JsonKey(name: 'invite_template') this.inviteTemplate,
      @JsonKey(name: 'confirmed_template') this.confirmedTemplate,
      @JsonKey(name: 'declined_template') this.declinedTemplate,
      @JsonKey(name: 'workflow_state') this.workflowState,
      @JsonKey(name: 'is_featured') this.isFeatured,
      this.status,
      @JsonKey(name: 'guest_list') final List<GuestModel>? guestList,
      @JsonKey(name: 'guest_report') this.guestReport})
      : _guestList = guestList;
  factory _EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  @override
  @JsonKey(name: 'event_id')
  final String? eventId;
  @override
  @JsonKey(name: 'date_time')
  final String? dateTime;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? language;
  @override
  final String? role;
  @override
  @JsonKey(name: 'longitude')
  final String? mapLongitude;
  @override
  @JsonKey(name: 'latitude')
  final String? mapLatitude;
  @override
  @JsonKey(name: 'map_link')
  final String? mapLink;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'show_qr')
  final int? showQr;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(includeFromJson: false)
  final File? image;
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
  @JsonKey(name: 'workflow_state')
  final String? workflowState;
  @override
  @JsonKey(name: 'is_featured')
  final int? isFeatured;
  @override
  final String? status;
// @JsonKey(name: 'guest_report') GuestReportModel? guestReport,
  final List<GuestModel>? _guestList;
// @JsonKey(name: 'guest_report') GuestReportModel? guestReport,
  @override
  @JsonKey(name: 'guest_list')
  List<GuestModel>? get guestList {
    final value = _guestList;
    if (value == null) return null;
    if (_guestList is EqualUnmodifiableListView) return _guestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'guest_report')
  final GuestReportModel? guestReport;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventModelCopyWith<_EventModel> get copyWith =>
      __$EventModelCopyWithImpl<_EventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EventModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventModel &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.mapLongitude, mapLongitude) ||
                other.mapLongitude == mapLongitude) &&
            (identical(other.mapLatitude, mapLatitude) ||
                other.mapLatitude == mapLatitude) &&
            (identical(other.mapLink, mapLink) || other.mapLink == mapLink) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.showQr, showQr) || other.showQr == showQr) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.inviteTemplate, inviteTemplate) ||
                other.inviteTemplate == inviteTemplate) &&
            (identical(other.confirmedTemplate, confirmedTemplate) ||
                other.confirmedTemplate == confirmedTemplate) &&
            (identical(other.declinedTemplate, declinedTemplate) ||
                other.declinedTemplate == declinedTemplate) &&
            (identical(other.workflowState, workflowState) ||
                other.workflowState == workflowState) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._guestList, _guestList) &&
            (identical(other.guestReport, guestReport) ||
                other.guestReport == guestReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        eventId,
        dateTime,
        title,
        type,
        language,
        role,
        mapLongitude,
        mapLatitude,
        mapLink,
        locationName,
        showQr,
        imageUrl,
        image,
        inviteTemplate,
        confirmedTemplate,
        declinedTemplate,
        workflowState,
        isFeatured,
        status,
        const DeepCollectionEquality().hash(_guestList),
        guestReport
      ]);

  @override
  String toString() {
    return 'EventModel(eventId: $eventId, dateTime: $dateTime, title: $title, type: $type, language: $language, role: $role, mapLongitude: $mapLongitude, mapLatitude: $mapLatitude, mapLink: $mapLink, locationName: $locationName, showQr: $showQr, imageUrl: $imageUrl, image: $image, inviteTemplate: $inviteTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, workflowState: $workflowState, isFeatured: $isFeatured, status: $status, guestList: $guestList, guestReport: $guestReport)';
  }
}

/// @nodoc
abstract mixin class _$EventModelCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(
          _EventModel value, $Res Function(_EventModel) _then) =
      __$EventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'event_id') String? eventId,
      @JsonKey(name: 'date_time') String? dateTime,
      String? title,
      String? type,
      String? language,
      String? role,
      @JsonKey(name: 'longitude') String? mapLongitude,
      @JsonKey(name: 'latitude') String? mapLatitude,
      @JsonKey(name: 'map_link') String? mapLink,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'show_qr') int? showQr,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(includeFromJson: false) File? image,
      @JsonKey(name: 'invite_template') String? inviteTemplate,
      @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
      @JsonKey(name: 'declined_template') String? declinedTemplate,
      @JsonKey(name: 'workflow_state') String? workflowState,
      @JsonKey(name: 'is_featured') int? isFeatured,
      String? status,
      @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
      @JsonKey(name: 'guest_report') GuestReportModel? guestReport});

  @override
  $GuestReportModelCopyWith<$Res>? get guestReport;
}

/// @nodoc
class __$EventModelCopyWithImpl<$Res> implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(this._self, this._then);

  final _EventModel _self;
  final $Res Function(_EventModel) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eventId = freezed,
    Object? dateTime = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? role = freezed,
    Object? mapLongitude = freezed,
    Object? mapLatitude = freezed,
    Object? mapLink = freezed,
    Object? locationName = freezed,
    Object? showQr = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? inviteTemplate = freezed,
    Object? confirmedTemplate = freezed,
    Object? declinedTemplate = freezed,
    Object? workflowState = freezed,
    Object? isFeatured = freezed,
    Object? status = freezed,
    Object? guestList = freezed,
    Object? guestReport = freezed,
  }) {
    return _then(_EventModel(
      eventId: freezed == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLongitude: freezed == mapLongitude
          ? _self.mapLongitude
          : mapLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLatitude: freezed == mapLatitude
          ? _self.mapLatitude
          : mapLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      mapLink: freezed == mapLink
          ? _self.mapLink
          : mapLink // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      showQr: freezed == showQr
          ? _self.showQr
          : showQr // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
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
      workflowState: freezed == workflowState
          ? _self.workflowState
          : workflowState // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _self.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      guestList: freezed == guestList
          ? _self._guestList
          : guestList // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>?,
      guestReport: freezed == guestReport
          ? _self.guestReport
          : guestReport // ignore: cast_nullable_to_non_nullable
              as GuestReportModel?,
    ));
  }

  /// Create a copy of EventModel
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

/// @nodoc
mixin _$GuestModel {
  @JsonKey(name: 'invitee_id')
  String? get inviteeId;
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  @JsonKey(name: 'whatsapp_number')
  String? get whatsappNumber;
  @JsonKey(name: 'party_size')
  int? get partySize;
  @JsonKey(name: 'rsvp_status')
  String? get rsvpStatus;
  @JsonKey(name: 'replied')
  int? get replied;

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
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.partySize, partySize) ||
                other.partySize == partySize) &&
            (identical(other.rsvpStatus, rsvpStatus) ||
                other.rsvpStatus == rsvpStatus) &&
            (identical(other.replied, replied) || other.replied == replied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteeId, fullName, firstName,
      lastName, whatsappNumber, partySize, rsvpStatus, replied);

  @override
  String toString() {
    return 'GuestModel(inviteeId: $inviteeId, fullName: $fullName, firstName: $firstName, lastName: $lastName, whatsappNumber: $whatsappNumber, partySize: $partySize, rsvpStatus: $rsvpStatus, replied: $replied)';
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
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'party_size') int? partySize,
      @JsonKey(name: 'rsvp_status') String? rsvpStatus,
      @JsonKey(name: 'replied') int? replied});
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? whatsappNumber = freezed,
    Object? partySize = freezed,
    Object? rsvpStatus = freezed,
    Object? replied = freezed,
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
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
      replied: freezed == replied
          ? _self.replied
          : replied // ignore: cast_nullable_to_non_nullable
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
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'last_name') String? lastName,
            @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
            @JsonKey(name: 'party_size') int? partySize,
            @JsonKey(name: 'rsvp_status') String? rsvpStatus,
            @JsonKey(name: 'replied') int? replied)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuestModel() when $default != null:
        return $default(
            _that.inviteeId,
            _that.fullName,
            _that.firstName,
            _that.lastName,
            _that.whatsappNumber,
            _that.partySize,
            _that.rsvpStatus,
            _that.replied);
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
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'last_name') String? lastName,
            @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
            @JsonKey(name: 'party_size') int? partySize,
            @JsonKey(name: 'rsvp_status') String? rsvpStatus,
            @JsonKey(name: 'replied') int? replied)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestModel():
        return $default(
            _that.inviteeId,
            _that.fullName,
            _that.firstName,
            _that.lastName,
            _that.whatsappNumber,
            _that.partySize,
            _that.rsvpStatus,
            _that.replied);
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
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'last_name') String? lastName,
            @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
            @JsonKey(name: 'party_size') int? partySize,
            @JsonKey(name: 'rsvp_status') String? rsvpStatus,
            @JsonKey(name: 'replied') int? replied)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestModel() when $default != null:
        return $default(
            _that.inviteeId,
            _that.fullName,
            _that.firstName,
            _that.lastName,
            _that.whatsappNumber,
            _that.partySize,
            _that.rsvpStatus,
            _that.replied);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuestModel implements GuestModel {
  const _GuestModel(
      {@JsonKey(name: 'invitee_id') this.inviteeId,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'whatsapp_number') this.whatsappNumber,
      @JsonKey(name: 'party_size') this.partySize,
      @JsonKey(name: 'rsvp_status') this.rsvpStatus,
      @JsonKey(name: 'replied') this.replied});
  factory _GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);

  @override
  @JsonKey(name: 'invitee_id')
  final String? inviteeId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
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
  @JsonKey(name: 'replied')
  final int? replied;

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
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.partySize, partySize) ||
                other.partySize == partySize) &&
            (identical(other.rsvpStatus, rsvpStatus) ||
                other.rsvpStatus == rsvpStatus) &&
            (identical(other.replied, replied) || other.replied == replied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteeId, fullName, firstName,
      lastName, whatsappNumber, partySize, rsvpStatus, replied);

  @override
  String toString() {
    return 'GuestModel(inviteeId: $inviteeId, fullName: $fullName, firstName: $firstName, lastName: $lastName, whatsappNumber: $whatsappNumber, partySize: $partySize, rsvpStatus: $rsvpStatus, replied: $replied)';
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
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'party_size') int? partySize,
      @JsonKey(name: 'rsvp_status') String? rsvpStatus,
      @JsonKey(name: 'replied') int? replied});
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? whatsappNumber = freezed,
    Object? partySize = freezed,
    Object? rsvpStatus = freezed,
    Object? replied = freezed,
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
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
      replied: freezed == replied
          ? _self.replied
          : replied // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
