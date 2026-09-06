// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_template_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InviteTemplateModel {

 String get name;@JsonKey(name: 'template_name') String get templateName;@JsonKey(name: 'app_template_image') String? get appTemplateImage;
/// Create a copy of InviteTemplateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InviteTemplateModelCopyWith<InviteTemplateModel> get copyWith => _$InviteTemplateModelCopyWithImpl<InviteTemplateModel>(this as InviteTemplateModel, _$identity);

  /// Serializes this InviteTemplateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InviteTemplateModel&&(identical(other.name, name) || other.name == name)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.appTemplateImage, appTemplateImage) || other.appTemplateImage == appTemplateImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,templateName,appTemplateImage);

@override
String toString() {
  return 'InviteTemplateModel(name: $name, templateName: $templateName, appTemplateImage: $appTemplateImage)';
}


}

/// @nodoc
abstract mixin class $InviteTemplateModelCopyWith<$Res>  {
  factory $InviteTemplateModelCopyWith(InviteTemplateModel value, $Res Function(InviteTemplateModel) _then) = _$InviteTemplateModelCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'template_name') String templateName,@JsonKey(name: 'app_template_image') String? appTemplateImage
});




}
/// @nodoc
class _$InviteTemplateModelCopyWithImpl<$Res>
    implements $InviteTemplateModelCopyWith<$Res> {
  _$InviteTemplateModelCopyWithImpl(this._self, this._then);

  final InviteTemplateModel _self;
  final $Res Function(InviteTemplateModel) _then;

/// Create a copy of InviteTemplateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? templateName = null,Object? appTemplateImage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,appTemplateImage: freezed == appTemplateImage ? _self.appTemplateImage : appTemplateImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InviteTemplateModel].
extension InviteTemplateModelPatterns on InviteTemplateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InviteTemplateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InviteTemplateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InviteTemplateModel value)  $default,){
final _that = this;
switch (_that) {
case _InviteTemplateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InviteTemplateModel value)?  $default,){
final _that = this;
switch (_that) {
case _InviteTemplateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'template_name')  String templateName, @JsonKey(name: 'app_template_image')  String? appTemplateImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InviteTemplateModel() when $default != null:
return $default(_that.name,_that.templateName,_that.appTemplateImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'template_name')  String templateName, @JsonKey(name: 'app_template_image')  String? appTemplateImage)  $default,) {final _that = this;
switch (_that) {
case _InviteTemplateModel():
return $default(_that.name,_that.templateName,_that.appTemplateImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'template_name')  String templateName, @JsonKey(name: 'app_template_image')  String? appTemplateImage)?  $default,) {final _that = this;
switch (_that) {
case _InviteTemplateModel() when $default != null:
return $default(_that.name,_that.templateName,_that.appTemplateImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InviteTemplateModel implements InviteTemplateModel {
  const _InviteTemplateModel({required this.name, @JsonKey(name: 'template_name') required this.templateName, @JsonKey(name: 'app_template_image') this.appTemplateImage});
  factory _InviteTemplateModel.fromJson(Map<String, dynamic> json) => _$InviteTemplateModelFromJson(json);

@override final  String name;
@override@JsonKey(name: 'template_name') final  String templateName;
@override@JsonKey(name: 'app_template_image') final  String? appTemplateImage;

/// Create a copy of InviteTemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InviteTemplateModelCopyWith<_InviteTemplateModel> get copyWith => __$InviteTemplateModelCopyWithImpl<_InviteTemplateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InviteTemplateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InviteTemplateModel&&(identical(other.name, name) || other.name == name)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.appTemplateImage, appTemplateImage) || other.appTemplateImage == appTemplateImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,templateName,appTemplateImage);

@override
String toString() {
  return 'InviteTemplateModel(name: $name, templateName: $templateName, appTemplateImage: $appTemplateImage)';
}


}

/// @nodoc
abstract mixin class _$InviteTemplateModelCopyWith<$Res> implements $InviteTemplateModelCopyWith<$Res> {
  factory _$InviteTemplateModelCopyWith(_InviteTemplateModel value, $Res Function(_InviteTemplateModel) _then) = __$InviteTemplateModelCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'template_name') String templateName,@JsonKey(name: 'app_template_image') String? appTemplateImage
});




}
/// @nodoc
class __$InviteTemplateModelCopyWithImpl<$Res>
    implements _$InviteTemplateModelCopyWith<$Res> {
  __$InviteTemplateModelCopyWithImpl(this._self, this._then);

  final _InviteTemplateModel _self;
  final $Res Function(_InviteTemplateModel) _then;

/// Create a copy of InviteTemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? templateName = null,Object? appTemplateImage = freezed,}) {
  return _then(_InviteTemplateModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,appTemplateImage: freezed == appTemplateImage ? _self.appTemplateImage : appTemplateImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
