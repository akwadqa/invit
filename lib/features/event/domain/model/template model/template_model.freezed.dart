// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemplateModel {

 String? get name;@JsonKey(name: 'template_name') String? get templateName;@JsonKey(name: 'occasion_type') String? get occasionType;@JsonKey(name: 'header_type') String? get headerType; String? get message; String? get image; List<TemplateButton>? get buttons;
/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateModelCopyWith<TemplateModel> get copyWith => _$TemplateModelCopyWithImpl<TemplateModel>(this as TemplateModel, _$identity);

  /// Serializes this TemplateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateModel&&(identical(other.name, name) || other.name == name)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.occasionType, occasionType) || other.occasionType == occasionType)&&(identical(other.headerType, headerType) || other.headerType == headerType)&&(identical(other.message, message) || other.message == message)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.buttons, buttons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,templateName,occasionType,headerType,message,image,const DeepCollectionEquality().hash(buttons));

@override
String toString() {
  return 'TemplateModel(name: $name, templateName: $templateName, occasionType: $occasionType, headerType: $headerType, message: $message, image: $image, buttons: $buttons)';
}


}

/// @nodoc
abstract mixin class $TemplateModelCopyWith<$Res>  {
  factory $TemplateModelCopyWith(TemplateModel value, $Res Function(TemplateModel) _then) = _$TemplateModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'template_name') String? templateName,@JsonKey(name: 'occasion_type') String? occasionType,@JsonKey(name: 'header_type') String? headerType, String? message, String? image, List<TemplateButton>? buttons
});




}
/// @nodoc
class _$TemplateModelCopyWithImpl<$Res>
    implements $TemplateModelCopyWith<$Res> {
  _$TemplateModelCopyWithImpl(this._self, this._then);

  final TemplateModel _self;
  final $Res Function(TemplateModel) _then;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? templateName = freezed,Object? occasionType = freezed,Object? headerType = freezed,Object? message = freezed,Object? image = freezed,Object? buttons = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,templateName: freezed == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String?,occasionType: freezed == occasionType ? _self.occasionType : occasionType // ignore: cast_nullable_to_non_nullable
as String?,headerType: freezed == headerType ? _self.headerType : headerType // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,buttons: freezed == buttons ? _self.buttons : buttons // ignore: cast_nullable_to_non_nullable
as List<TemplateButton>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TemplateModel].
extension TemplateModelPatterns on TemplateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TemplateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TemplateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TemplateModel value)  $default,){
final _that = this;
switch (_that) {
case _TemplateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TemplateModel value)?  $default,){
final _that = this;
switch (_that) {
case _TemplateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'template_name')  String? templateName, @JsonKey(name: 'occasion_type')  String? occasionType, @JsonKey(name: 'header_type')  String? headerType,  String? message,  String? image,  List<TemplateButton>? buttons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TemplateModel() when $default != null:
return $default(_that.name,_that.templateName,_that.occasionType,_that.headerType,_that.message,_that.image,_that.buttons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'template_name')  String? templateName, @JsonKey(name: 'occasion_type')  String? occasionType, @JsonKey(name: 'header_type')  String? headerType,  String? message,  String? image,  List<TemplateButton>? buttons)  $default,) {final _that = this;
switch (_that) {
case _TemplateModel():
return $default(_that.name,_that.templateName,_that.occasionType,_that.headerType,_that.message,_that.image,_that.buttons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'template_name')  String? templateName, @JsonKey(name: 'occasion_type')  String? occasionType, @JsonKey(name: 'header_type')  String? headerType,  String? message,  String? image,  List<TemplateButton>? buttons)?  $default,) {final _that = this;
switch (_that) {
case _TemplateModel() when $default != null:
return $default(_that.name,_that.templateName,_that.occasionType,_that.headerType,_that.message,_that.image,_that.buttons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TemplateModel implements TemplateModel {
  const _TemplateModel({this.name, @JsonKey(name: 'template_name') this.templateName, @JsonKey(name: 'occasion_type') this.occasionType, @JsonKey(name: 'header_type') this.headerType, this.message, this.image, final  List<TemplateButton>? buttons}): _buttons = buttons;
  factory _TemplateModel.fromJson(Map<String, dynamic> json) => _$TemplateModelFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'template_name') final  String? templateName;
@override@JsonKey(name: 'occasion_type') final  String? occasionType;
@override@JsonKey(name: 'header_type') final  String? headerType;
@override final  String? message;
@override final  String? image;
 final  List<TemplateButton>? _buttons;
@override List<TemplateButton>? get buttons {
  final value = _buttons;
  if (value == null) return null;
  if (_buttons is EqualUnmodifiableListView) return _buttons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateModelCopyWith<_TemplateModel> get copyWith => __$TemplateModelCopyWithImpl<_TemplateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateModel&&(identical(other.name, name) || other.name == name)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.occasionType, occasionType) || other.occasionType == occasionType)&&(identical(other.headerType, headerType) || other.headerType == headerType)&&(identical(other.message, message) || other.message == message)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._buttons, _buttons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,templateName,occasionType,headerType,message,image,const DeepCollectionEquality().hash(_buttons));

@override
String toString() {
  return 'TemplateModel(name: $name, templateName: $templateName, occasionType: $occasionType, headerType: $headerType, message: $message, image: $image, buttons: $buttons)';
}


}

/// @nodoc
abstract mixin class _$TemplateModelCopyWith<$Res> implements $TemplateModelCopyWith<$Res> {
  factory _$TemplateModelCopyWith(_TemplateModel value, $Res Function(_TemplateModel) _then) = __$TemplateModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'template_name') String? templateName,@JsonKey(name: 'occasion_type') String? occasionType,@JsonKey(name: 'header_type') String? headerType, String? message, String? image, List<TemplateButton>? buttons
});




}
/// @nodoc
class __$TemplateModelCopyWithImpl<$Res>
    implements _$TemplateModelCopyWith<$Res> {
  __$TemplateModelCopyWithImpl(this._self, this._then);

  final _TemplateModel _self;
  final $Res Function(_TemplateModel) _then;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? templateName = freezed,Object? occasionType = freezed,Object? headerType = freezed,Object? message = freezed,Object? image = freezed,Object? buttons = freezed,}) {
  return _then(_TemplateModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,templateName: freezed == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String?,occasionType: freezed == occasionType ? _self.occasionType : occasionType // ignore: cast_nullable_to_non_nullable
as String?,headerType: freezed == headerType ? _self.headerType : headerType // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,buttons: freezed == buttons ? _self._buttons : buttons // ignore: cast_nullable_to_non_nullable
as List<TemplateButton>?,
  ));
}


}


/// @nodoc
mixin _$TemplateButton {

@JsonKey(name: 'button_type') String? get buttonType;@JsonKey(name: 'button_label') String? get buttonLabel;@JsonKey(name: 'action_type') String? get actionType;@JsonKey(name: 'phone_number') String? get phoneNumber;@JsonKey(name: 'website_url') String? get websiteUrl; dynamic get flow;@JsonKey(name: 'linked_template') LinkedTemplate? get linkedTemplate;
/// Create a copy of TemplateButton
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateButtonCopyWith<TemplateButton> get copyWith => _$TemplateButtonCopyWithImpl<TemplateButton>(this as TemplateButton, _$identity);

  /// Serializes this TemplateButton to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateButton&&(identical(other.buttonType, buttonType) || other.buttonType == buttonType)&&(identical(other.buttonLabel, buttonLabel) || other.buttonLabel == buttonLabel)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&const DeepCollectionEquality().equals(other.flow, flow)&&(identical(other.linkedTemplate, linkedTemplate) || other.linkedTemplate == linkedTemplate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buttonType,buttonLabel,actionType,phoneNumber,websiteUrl,const DeepCollectionEquality().hash(flow),linkedTemplate);

@override
String toString() {
  return 'TemplateButton(buttonType: $buttonType, buttonLabel: $buttonLabel, actionType: $actionType, phoneNumber: $phoneNumber, websiteUrl: $websiteUrl, flow: $flow, linkedTemplate: $linkedTemplate)';
}


}

/// @nodoc
abstract mixin class $TemplateButtonCopyWith<$Res>  {
  factory $TemplateButtonCopyWith(TemplateButton value, $Res Function(TemplateButton) _then) = _$TemplateButtonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'button_type') String? buttonType,@JsonKey(name: 'button_label') String? buttonLabel,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'website_url') String? websiteUrl, dynamic flow,@JsonKey(name: 'linked_template') LinkedTemplate? linkedTemplate
});


$LinkedTemplateCopyWith<$Res>? get linkedTemplate;

}
/// @nodoc
class _$TemplateButtonCopyWithImpl<$Res>
    implements $TemplateButtonCopyWith<$Res> {
  _$TemplateButtonCopyWithImpl(this._self, this._then);

  final TemplateButton _self;
  final $Res Function(TemplateButton) _then;

/// Create a copy of TemplateButton
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buttonType = freezed,Object? buttonLabel = freezed,Object? actionType = freezed,Object? phoneNumber = freezed,Object? websiteUrl = freezed,Object? flow = freezed,Object? linkedTemplate = freezed,}) {
  return _then(_self.copyWith(
buttonType: freezed == buttonType ? _self.buttonType : buttonType // ignore: cast_nullable_to_non_nullable
as String?,buttonLabel: freezed == buttonLabel ? _self.buttonLabel : buttonLabel // ignore: cast_nullable_to_non_nullable
as String?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,flow: freezed == flow ? _self.flow : flow // ignore: cast_nullable_to_non_nullable
as dynamic,linkedTemplate: freezed == linkedTemplate ? _self.linkedTemplate : linkedTemplate // ignore: cast_nullable_to_non_nullable
as LinkedTemplate?,
  ));
}
/// Create a copy of TemplateButton
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkedTemplateCopyWith<$Res>? get linkedTemplate {
    if (_self.linkedTemplate == null) {
    return null;
  }

  return $LinkedTemplateCopyWith<$Res>(_self.linkedTemplate!, (value) {
    return _then(_self.copyWith(linkedTemplate: value));
  });
}
}


/// Adds pattern-matching-related methods to [TemplateButton].
extension TemplateButtonPatterns on TemplateButton {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TemplateButton value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TemplateButton() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TemplateButton value)  $default,){
final _that = this;
switch (_that) {
case _TemplateButton():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TemplateButton value)?  $default,){
final _that = this;
switch (_that) {
case _TemplateButton() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'button_type')  String? buttonType, @JsonKey(name: 'button_label')  String? buttonLabel, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'website_url')  String? websiteUrl,  dynamic flow, @JsonKey(name: 'linked_template')  LinkedTemplate? linkedTemplate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TemplateButton() when $default != null:
return $default(_that.buttonType,_that.buttonLabel,_that.actionType,_that.phoneNumber,_that.websiteUrl,_that.flow,_that.linkedTemplate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'button_type')  String? buttonType, @JsonKey(name: 'button_label')  String? buttonLabel, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'website_url')  String? websiteUrl,  dynamic flow, @JsonKey(name: 'linked_template')  LinkedTemplate? linkedTemplate)  $default,) {final _that = this;
switch (_that) {
case _TemplateButton():
return $default(_that.buttonType,_that.buttonLabel,_that.actionType,_that.phoneNumber,_that.websiteUrl,_that.flow,_that.linkedTemplate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'button_type')  String? buttonType, @JsonKey(name: 'button_label')  String? buttonLabel, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'website_url')  String? websiteUrl,  dynamic flow, @JsonKey(name: 'linked_template')  LinkedTemplate? linkedTemplate)?  $default,) {final _that = this;
switch (_that) {
case _TemplateButton() when $default != null:
return $default(_that.buttonType,_that.buttonLabel,_that.actionType,_that.phoneNumber,_that.websiteUrl,_that.flow,_that.linkedTemplate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TemplateButton implements TemplateButton {
  const _TemplateButton({@JsonKey(name: 'button_type') this.buttonType, @JsonKey(name: 'button_label') this.buttonLabel, @JsonKey(name: 'action_type') this.actionType, @JsonKey(name: 'phone_number') this.phoneNumber, @JsonKey(name: 'website_url') this.websiteUrl, this.flow, @JsonKey(name: 'linked_template') this.linkedTemplate});
  factory _TemplateButton.fromJson(Map<String, dynamic> json) => _$TemplateButtonFromJson(json);

@override@JsonKey(name: 'button_type') final  String? buttonType;
@override@JsonKey(name: 'button_label') final  String? buttonLabel;
@override@JsonKey(name: 'action_type') final  String? actionType;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override@JsonKey(name: 'website_url') final  String? websiteUrl;
@override final  dynamic flow;
@override@JsonKey(name: 'linked_template') final  LinkedTemplate? linkedTemplate;

/// Create a copy of TemplateButton
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateButtonCopyWith<_TemplateButton> get copyWith => __$TemplateButtonCopyWithImpl<_TemplateButton>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateButtonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateButton&&(identical(other.buttonType, buttonType) || other.buttonType == buttonType)&&(identical(other.buttonLabel, buttonLabel) || other.buttonLabel == buttonLabel)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&const DeepCollectionEquality().equals(other.flow, flow)&&(identical(other.linkedTemplate, linkedTemplate) || other.linkedTemplate == linkedTemplate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buttonType,buttonLabel,actionType,phoneNumber,websiteUrl,const DeepCollectionEquality().hash(flow),linkedTemplate);

@override
String toString() {
  return 'TemplateButton(buttonType: $buttonType, buttonLabel: $buttonLabel, actionType: $actionType, phoneNumber: $phoneNumber, websiteUrl: $websiteUrl, flow: $flow, linkedTemplate: $linkedTemplate)';
}


}

/// @nodoc
abstract mixin class _$TemplateButtonCopyWith<$Res> implements $TemplateButtonCopyWith<$Res> {
  factory _$TemplateButtonCopyWith(_TemplateButton value, $Res Function(_TemplateButton) _then) = __$TemplateButtonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'button_type') String? buttonType,@JsonKey(name: 'button_label') String? buttonLabel,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'website_url') String? websiteUrl, dynamic flow,@JsonKey(name: 'linked_template') LinkedTemplate? linkedTemplate
});


@override $LinkedTemplateCopyWith<$Res>? get linkedTemplate;

}
/// @nodoc
class __$TemplateButtonCopyWithImpl<$Res>
    implements _$TemplateButtonCopyWith<$Res> {
  __$TemplateButtonCopyWithImpl(this._self, this._then);

  final _TemplateButton _self;
  final $Res Function(_TemplateButton) _then;

/// Create a copy of TemplateButton
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buttonType = freezed,Object? buttonLabel = freezed,Object? actionType = freezed,Object? phoneNumber = freezed,Object? websiteUrl = freezed,Object? flow = freezed,Object? linkedTemplate = freezed,}) {
  return _then(_TemplateButton(
buttonType: freezed == buttonType ? _self.buttonType : buttonType // ignore: cast_nullable_to_non_nullable
as String?,buttonLabel: freezed == buttonLabel ? _self.buttonLabel : buttonLabel // ignore: cast_nullable_to_non_nullable
as String?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,flow: freezed == flow ? _self.flow : flow // ignore: cast_nullable_to_non_nullable
as dynamic,linkedTemplate: freezed == linkedTemplate ? _self.linkedTemplate : linkedTemplate // ignore: cast_nullable_to_non_nullable
as LinkedTemplate?,
  ));
}

/// Create a copy of TemplateButton
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkedTemplateCopyWith<$Res>? get linkedTemplate {
    if (_self.linkedTemplate == null) {
    return null;
  }

  return $LinkedTemplateCopyWith<$Res>(_self.linkedTemplate!, (value) {
    return _then(_self.copyWith(linkedTemplate: value));
  });
}
}


/// @nodoc
mixin _$LinkedTemplate {

 String? get name;@JsonKey(name: 'template_name') String? get templateName;@JsonKey(name: 'header_type') String? get headerType; String? get message; String? get image;
/// Create a copy of LinkedTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkedTemplateCopyWith<LinkedTemplate> get copyWith => _$LinkedTemplateCopyWithImpl<LinkedTemplate>(this as LinkedTemplate, _$identity);

  /// Serializes this LinkedTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkedTemplate&&(identical(other.name, name) || other.name == name)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.headerType, headerType) || other.headerType == headerType)&&(identical(other.message, message) || other.message == message)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,templateName,headerType,message,image);

@override
String toString() {
  return 'LinkedTemplate(name: $name, templateName: $templateName, headerType: $headerType, message: $message, image: $image)';
}


}

/// @nodoc
abstract mixin class $LinkedTemplateCopyWith<$Res>  {
  factory $LinkedTemplateCopyWith(LinkedTemplate value, $Res Function(LinkedTemplate) _then) = _$LinkedTemplateCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'template_name') String? templateName,@JsonKey(name: 'header_type') String? headerType, String? message, String? image
});




}
/// @nodoc
class _$LinkedTemplateCopyWithImpl<$Res>
    implements $LinkedTemplateCopyWith<$Res> {
  _$LinkedTemplateCopyWithImpl(this._self, this._then);

  final LinkedTemplate _self;
  final $Res Function(LinkedTemplate) _then;

/// Create a copy of LinkedTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? templateName = freezed,Object? headerType = freezed,Object? message = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,templateName: freezed == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String?,headerType: freezed == headerType ? _self.headerType : headerType // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkedTemplate].
extension LinkedTemplatePatterns on LinkedTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkedTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkedTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkedTemplate value)  $default,){
final _that = this;
switch (_that) {
case _LinkedTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkedTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _LinkedTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'template_name')  String? templateName, @JsonKey(name: 'header_type')  String? headerType,  String? message,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkedTemplate() when $default != null:
return $default(_that.name,_that.templateName,_that.headerType,_that.message,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'template_name')  String? templateName, @JsonKey(name: 'header_type')  String? headerType,  String? message,  String? image)  $default,) {final _that = this;
switch (_that) {
case _LinkedTemplate():
return $default(_that.name,_that.templateName,_that.headerType,_that.message,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'template_name')  String? templateName, @JsonKey(name: 'header_type')  String? headerType,  String? message,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _LinkedTemplate() when $default != null:
return $default(_that.name,_that.templateName,_that.headerType,_that.message,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkedTemplate implements LinkedTemplate {
  const _LinkedTemplate({this.name, @JsonKey(name: 'template_name') this.templateName, @JsonKey(name: 'header_type') this.headerType, this.message, this.image});
  factory _LinkedTemplate.fromJson(Map<String, dynamic> json) => _$LinkedTemplateFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'template_name') final  String? templateName;
@override@JsonKey(name: 'header_type') final  String? headerType;
@override final  String? message;
@override final  String? image;

/// Create a copy of LinkedTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkedTemplateCopyWith<_LinkedTemplate> get copyWith => __$LinkedTemplateCopyWithImpl<_LinkedTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkedTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkedTemplate&&(identical(other.name, name) || other.name == name)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.headerType, headerType) || other.headerType == headerType)&&(identical(other.message, message) || other.message == message)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,templateName,headerType,message,image);

@override
String toString() {
  return 'LinkedTemplate(name: $name, templateName: $templateName, headerType: $headerType, message: $message, image: $image)';
}


}

/// @nodoc
abstract mixin class _$LinkedTemplateCopyWith<$Res> implements $LinkedTemplateCopyWith<$Res> {
  factory _$LinkedTemplateCopyWith(_LinkedTemplate value, $Res Function(_LinkedTemplate) _then) = __$LinkedTemplateCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'template_name') String? templateName,@JsonKey(name: 'header_type') String? headerType, String? message, String? image
});




}
/// @nodoc
class __$LinkedTemplateCopyWithImpl<$Res>
    implements _$LinkedTemplateCopyWith<$Res> {
  __$LinkedTemplateCopyWithImpl(this._self, this._then);

  final _LinkedTemplate _self;
  final $Res Function(_LinkedTemplate) _then;

/// Create a copy of LinkedTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? templateName = freezed,Object? headerType = freezed,Object? message = freezed,Object? image = freezed,}) {
  return _then(_LinkedTemplate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,templateName: freezed == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String?,headerType: freezed == headerType ? _self.headerType : headerType // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
