// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_scan_event_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserScanEventResponse {
// @JsonKey(name: 'events') required List<EventModel> events,
  @JsonKey(name: 'occasion_id')
  String get occasionId;
  String get title;
  String get date;
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
  @JsonKey(name: 'workflow_state')
  String get workflowState;

  /// Create a copy of UserScanEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserScanEventResponseCopyWith<UserScanEventResponse> get copyWith =>
      _$UserScanEventResponseCopyWithImpl<UserScanEventResponse>(
          this as UserScanEventResponse, _$identity);

  /// Serializes this UserScanEventResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserScanEventResponse &&
            (identical(other.occasionId, occasionId) ||
                other.occasionId == occasionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mapLink, mapLink) || other.mapLink == mapLink) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.inviteTemplate, inviteTemplate) ||
                other.inviteTemplate == inviteTemplate) &&
            (identical(other.confirmedTemplate, confirmedTemplate) ||
                other.confirmedTemplate == confirmedTemplate) &&
            (identical(other.declinedTemplate, declinedTemplate) ||
                other.declinedTemplate == declinedTemplate) &&
            (identical(other.workflowState, workflowState) ||
                other.workflowState == workflowState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      occasionId,
      title,
      date,
      mapLink,
      imageUrl,
      inviteTemplate,
      confirmedTemplate,
      declinedTemplate,
      workflowState);

  @override
  String toString() {
    return 'UserScanEventResponse(occasionId: $occasionId, title: $title, date: $date, mapLink: $mapLink, imageUrl: $imageUrl, inviteTemplate: $inviteTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, workflowState: $workflowState)';
  }
}

/// @nodoc
abstract mixin class $UserScanEventResponseCopyWith<$Res> {
  factory $UserScanEventResponseCopyWith(UserScanEventResponse value,
          $Res Function(UserScanEventResponse) _then) =
      _$UserScanEventResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'occasion_id') String occasionId,
      String title,
      String date,
      @JsonKey(name: 'map_link') String mapLink,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'invite_template') String? inviteTemplate,
      @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
      @JsonKey(name: 'declined_template') String? declinedTemplate,
      @JsonKey(name: 'workflow_state') String workflowState});
}

/// @nodoc
class _$UserScanEventResponseCopyWithImpl<$Res>
    implements $UserScanEventResponseCopyWith<$Res> {
  _$UserScanEventResponseCopyWithImpl(this._self, this._then);

  final UserScanEventResponse _self;
  final $Res Function(UserScanEventResponse) _then;

  /// Create a copy of UserScanEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occasionId = null,
    Object? title = null,
    Object? date = null,
    Object? mapLink = null,
    Object? imageUrl = null,
    Object? inviteTemplate = freezed,
    Object? confirmedTemplate = freezed,
    Object? declinedTemplate = freezed,
    Object? workflowState = null,
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
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
      workflowState: null == workflowState
          ? _self.workflowState
          : workflowState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserScanEventResponse].
extension UserScanEventResponsePatterns on UserScanEventResponse {
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
    TResult Function(_UserScanEventResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserScanEventResponse() when $default != null:
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
    TResult Function(_UserScanEventResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserScanEventResponse():
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
    TResult? Function(_UserScanEventResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserScanEventResponse() when $default != null:
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
            String date,
            @JsonKey(name: 'map_link') String mapLink,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            @JsonKey(name: 'workflow_state') String workflowState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserScanEventResponse() when $default != null:
        return $default(
            _that.occasionId,
            _that.title,
            _that.date,
            _that.mapLink,
            _that.imageUrl,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.workflowState);
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
            String date,
            @JsonKey(name: 'map_link') String mapLink,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            @JsonKey(name: 'workflow_state') String workflowState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserScanEventResponse():
        return $default(
            _that.occasionId,
            _that.title,
            _that.date,
            _that.mapLink,
            _that.imageUrl,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.workflowState);
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
            String date,
            @JsonKey(name: 'map_link') String mapLink,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'invite_template') String? inviteTemplate,
            @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
            @JsonKey(name: 'declined_template') String? declinedTemplate,
            @JsonKey(name: 'workflow_state') String workflowState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserScanEventResponse() when $default != null:
        return $default(
            _that.occasionId,
            _that.title,
            _that.date,
            _that.mapLink,
            _that.imageUrl,
            _that.inviteTemplate,
            _that.confirmedTemplate,
            _that.declinedTemplate,
            _that.workflowState);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserScanEventResponse implements UserScanEventResponse {
  const _UserScanEventResponse(
      {@JsonKey(name: 'occasion_id') required this.occasionId,
      required this.title,
      required this.date,
      @JsonKey(name: 'map_link') required this.mapLink,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'invite_template') this.inviteTemplate,
      @JsonKey(name: 'confirmed_template') this.confirmedTemplate,
      @JsonKey(name: 'declined_template') this.declinedTemplate,
      @JsonKey(name: 'workflow_state') required this.workflowState});
  factory _UserScanEventResponse.fromJson(Map<String, dynamic> json) =>
      _$UserScanEventResponseFromJson(json);

// @JsonKey(name: 'events') required List<EventModel> events,
  @override
  @JsonKey(name: 'occasion_id')
  final String occasionId;
  @override
  final String title;
  @override
  final String date;
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
  @JsonKey(name: 'workflow_state')
  final String workflowState;

  /// Create a copy of UserScanEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserScanEventResponseCopyWith<_UserScanEventResponse> get copyWith =>
      __$UserScanEventResponseCopyWithImpl<_UserScanEventResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserScanEventResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserScanEventResponse &&
            (identical(other.occasionId, occasionId) ||
                other.occasionId == occasionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mapLink, mapLink) || other.mapLink == mapLink) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.inviteTemplate, inviteTemplate) ||
                other.inviteTemplate == inviteTemplate) &&
            (identical(other.confirmedTemplate, confirmedTemplate) ||
                other.confirmedTemplate == confirmedTemplate) &&
            (identical(other.declinedTemplate, declinedTemplate) ||
                other.declinedTemplate == declinedTemplate) &&
            (identical(other.workflowState, workflowState) ||
                other.workflowState == workflowState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      occasionId,
      title,
      date,
      mapLink,
      imageUrl,
      inviteTemplate,
      confirmedTemplate,
      declinedTemplate,
      workflowState);

  @override
  String toString() {
    return 'UserScanEventResponse(occasionId: $occasionId, title: $title, date: $date, mapLink: $mapLink, imageUrl: $imageUrl, inviteTemplate: $inviteTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, workflowState: $workflowState)';
  }
}

/// @nodoc
abstract mixin class _$UserScanEventResponseCopyWith<$Res>
    implements $UserScanEventResponseCopyWith<$Res> {
  factory _$UserScanEventResponseCopyWith(_UserScanEventResponse value,
          $Res Function(_UserScanEventResponse) _then) =
      __$UserScanEventResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'occasion_id') String occasionId,
      String title,
      String date,
      @JsonKey(name: 'map_link') String mapLink,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'invite_template') String? inviteTemplate,
      @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
      @JsonKey(name: 'declined_template') String? declinedTemplate,
      @JsonKey(name: 'workflow_state') String workflowState});
}

/// @nodoc
class __$UserScanEventResponseCopyWithImpl<$Res>
    implements _$UserScanEventResponseCopyWith<$Res> {
  __$UserScanEventResponseCopyWithImpl(this._self, this._then);

  final _UserScanEventResponse _self;
  final $Res Function(_UserScanEventResponse) _then;

  /// Create a copy of UserScanEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? occasionId = null,
    Object? title = null,
    Object? date = null,
    Object? mapLink = null,
    Object? imageUrl = null,
    Object? inviteTemplate = freezed,
    Object? confirmedTemplate = freezed,
    Object? declinedTemplate = freezed,
    Object? workflowState = null,
  }) {
    return _then(_UserScanEventResponse(
      occasionId: null == occasionId
          ? _self.occasionId
          : occasionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
      workflowState: null == workflowState
          ? _self.workflowState
          : workflowState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
