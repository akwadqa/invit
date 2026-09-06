import 'package:freezed_annotation/freezed_annotation.dart';

// تأكد من تطابق اسم الملف هنا مع اسم ملفك الفعلي
part 'template_model.freezed.dart';
part 'template_model.g.dart';

@freezed
abstract class TemplateModel with _$TemplateModel {
  const factory TemplateModel({
    String? name,
    @JsonKey(name: 'template_name') String? templateName,
    @JsonKey(name: 'occasion_type') String? occasionType,
    @JsonKey(name: 'header_type') String? headerType,
    String? message,
    String? image,
    List<TemplateButton>? buttons,
  }) = _TemplateModel;

  factory TemplateModel.fromJson(Map<String, dynamic> json) =>
      _$TemplateModelFromJson(json);
}

@freezed
abstract class TemplateButton with _$TemplateButton {
  const factory TemplateButton({
    @JsonKey(name: 'button_type') String? buttonType,
    @JsonKey(name: 'button_label') String? buttonLabel,
    @JsonKey(name: 'action_type') String? actionType,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'website_url') String? websiteUrl,
    dynamic flow,
    @JsonKey(name: 'linked_template') LinkedTemplate? linkedTemplate,
  }) = _TemplateButton;

  factory TemplateButton.fromJson(Map<String, dynamic> json) =>
      _$TemplateButtonFromJson(json);
}

@freezed
abstract class LinkedTemplate with _$LinkedTemplate {
  const factory LinkedTemplate({
    String? name,
    @JsonKey(name: 'template_name') String? templateName,
    @JsonKey(name: 'header_type') String? headerType,
    String? message,
    String? image,
  }) = _LinkedTemplate;

  factory LinkedTemplate.fromJson(Map<String, dynamic> json) =>
      _$LinkedTemplateFromJson(json);
}